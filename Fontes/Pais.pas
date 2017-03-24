unit uPais;

interface
  uses
    SysUtils;
  type
    Pais = class
  private
    Codigo: Integer;
    Nome: String;
    DDI: Integer;
  public
    constructor crieObjeto;
    destructor destruaSe;
    
    function getCodigo: Integer;
    function getDDI: Integer;
    funciion getNome: String;
    
    procedure setCodigo(vCodigo: Integer);
    procedure setDDI(vDDI: Integer);
    procedure setNome(vNome: String);
  end;
implementation

{ Pais }

end.
