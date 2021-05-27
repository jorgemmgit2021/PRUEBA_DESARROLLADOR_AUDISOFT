using PRUEBA_DESARROLLADOR.PruebaTableAdapters;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using static PRUEBA_DESARROLLADOR.Prueba;

namespace PRUEBA_DESARROLLADOR
{
    public class DTO_PRUEBA {
        int _process;
        Prueba context;
        CajasDataTable Cajas;
        CajasTableAdapter TA_Cajas;
        BolsaDataTable Bolsas;
        BolsaTableAdapter TA_Bolsas;
        CarpetasDataTable Carpetas;
        CarpetasTableAdapter TA_Carpetas;
        DocumentoDataTable Documentos;
        DocumentoTableAdapter TA_Documentos;
        public void SetContext<T>(){
            context = new Prueba();
            switch (typeof(T).Name) {
                case "CajasDataTable": {
                        Cajas = context.Cajas;
                        TA_Cajas = new CajasTableAdapter();
                        break;
                }
                case "BolsaDataTable": {
                        Bolsas = context.Bolsa;
                        TA_Bolsas = new BolsaTableAdapter();
                        break;    
                }
                case "CarpetasDataTable":{
                        Carpetas = context.Carpetas;
                        TA_Carpetas = new CarpetasTableAdapter();
                        break;
                    }
                case "DocumentoDataTable": {
                        Documentos = context.Documento;
                        TA_Documentos = new DocumentoTableAdapter();
                        break;
                    }
            }
        }
        public void DeleteContext<T>(){
            context = new Prueba();
            switch (typeof(T).Name){
                case "CajasDataTable":{
                        Cajas = null;
                        TA_Cajas = null;
                        break;
                    }
                case "BolsaDataTable":{
                        Bolsas = null;
                        TA_Bolsas = null;
                        break;
                    }
                case "CarpetasDataTable":{
                        Carpetas = null;
                        TA_Carpetas = null;
                        break;
                    }
                case "DocumentoDataTable":{
                        Documentos = null;
                        TA_Documentos = null;
                        break;
                    }
            }
        }

        public CajasDataTable GetDataCajas(){
            Cajas = new PruebaTableAdapters.CajasTableAdapter().GetData();           
            return Cajas;
        }

        public int GuardarCajas(string Descripcion_caja, int Documento_propietario, System.DateTime Fecha, int original_Id_Caja){
            SetContext<CajasDataTable>();
            if(original_Id_Caja == 0){
                TA_Cajas.Insert(Descripcion_caja, Documento_propietario, Fecha);
                _process = TA_Cajas.Adapter.Update(context);
            }
            else{
                TA_Cajas.Update(Descripcion_caja, Documento_propietario, Fecha, original_Id_Caja);
                _process = TA_Cajas.Adapter.Update(context);
            }
            context.AcceptChanges();
            DeleteContext<CajasDataTable>();
            return _process;
        }

        public int DeleteCajas(int Original_Id_Caja){
            SetContext<CajasDataTable>();
            TA_Cajas.Delete(Original_Id_Caja);
            _process = TA_Cajas.Adapter.Update(context);
            DeleteContext<CajasDataTable>();
            return _process;
        }

        public BolsaDataTable GetDataBolsas(){
            Bolsas = new BolsaTableAdapter().GetData();
            return Bolsas;
        }

        public int GuardarBolsas(string Descripcion, int Id_Caja, System.DateTime Fecha, int Original_Id_Bolsa, int Id_Bolsa){
            SetContext<BolsaDataTable>();
            if (string.IsNullOrEmpty(Descripcion)) return -1;
            if (Id_Bolsa== 0){
                TA_Bolsas.Insert(Descripcion,Id_Caja,Fecha);
                _process = TA_Bolsas.Adapter.Update(context);
            }
            else{
                TA_Bolsas.Update(Descripcion,Id_Caja,Fecha,Id_Bolsa);
                _process = TA_Bolsas.Update(context);
            }
            context.AcceptChanges();
            DeleteContext<BolsaDataTable>();
            return _process;
        }

        public int DeleteBolsas(int Original_Id_Bolsa, int Id_Bolsa){
            SetContext<BolsaDataTable>();
            TA_Bolsas.Delete(Id_Bolsa);
            _process = TA_Bolsas.Adapter.Update(context);
            DeleteContext <BolsaDataTable>();
            return _process;
        }

        public CarpetasDataTable GetDataCarpetas(){
            Carpetas = new CarpetasTableAdapter().GetData();
            return Carpetas;
        }

        public int GuardarCarpetas(string Descripcion, int Id_Bolsa, System.DateTime Fecha, int Consecutivo, int original_Id_Carpeta){
            SetContext<CarpetasDataTable>();
            if (original_Id_Carpeta == 0){
                TA_Carpetas.Insert(Descripcion,Id_Bolsa,Fecha,Consecutivo);
                _process = TA_Carpetas.Adapter.Update(context);
            }
            else{
                TA_Carpetas.Update(Descripcion,Id_Bolsa,Fecha,Consecutivo, original_Id_Carpeta);
                _process = TA_Carpetas.Update(context);
            }
            context.AcceptChanges();
            DeleteContext<CarpetasDataTable>();
            return _process;
        }

        public int DeleteCarpetas(int Original_Id_Carpeta){
            SetContext<CarpetasDataTable>();
            TA_Carpetas.Delete(Original_Id_Carpeta);
            _process = TA_Carpetas.Adapter.Update(context);
            DeleteContext <CarpetasDataTable>();
            return _process;
        }

        public DocumentoDataTable GetDataDocumentos(){
            Documentos = new DocumentoTableAdapter().GetData();
            return Documentos;
        }

        public DocumentoDataTable GetByDataDocumentos(int Id){
            DocumentoDataTable Resultado = new DocumentoDataTable();
            if (Id == 0) return Resultado;
            var carpeta = new CarpetasTableAdapter().GetData();
            carpeta.DefaultView.RowFilter = $"[Consecutivo]={Id}";
            Id = carpeta.Rows[0][0] != null ? (int) carpeta.DefaultView.ToTable().Rows[0]["Id_Carpeta"] : Id;
            Documentos = new DocumentoTableAdapter().GetData();
            Documentos.DefaultView.RowFilter = $"[Id_Carpeta]={Id}";
            Resultado.Load(Documentos.DefaultView.ToTable().CreateDataReader());
            return Resultado;
        }

        public int GuardarDocumentos(string Descripcion, int Id_Carpeta, System.DateTime Fecha, string Ruta, int Original_Id_Documento){
            SetContext<DocumentoDataTable>();
            if (Original_Id_Documento == 0){
                TA_Documentos.Insert(Descripcion, Id_Carpeta, Fecha, Ruta);
                _process = TA_Documentos.Adapter.Update(context);
            }
            else{
                 TA_Documentos.Update(Descripcion, Id_Carpeta, Fecha, Ruta, Original_Id_Documento);
                _process = TA_Documentos.Update(context);
            }
            context.AcceptChanges();
            DeleteContext<DocumentoDataTable>();
            return _process;
        }

        public int DeleteDocumentos(int Original_Id_Documento){
            SetContext<DocumentoDataTable>();
            TA_Documentos.Delete(Original_Id_Documento);
            _process = TA_Documentos.Update(context);
            DeleteContext<DocumentoDataTable>();
            return _process;
        }

    }
}