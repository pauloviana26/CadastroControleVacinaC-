<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="PrimeiroTrabalho.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Cadastro de controle de vacinação</div>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Nome completo:"></asp:Label>
        <asp:TextBox ID="tb_Nome" runat="server" Width="517px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_Nome" EnableClientScript="False" ErrorMessage="*** Erro: O campo nome é obrigatório." ForeColor="Red"></asp:RequiredFieldValidator>
        <p>
            <asp:Label ID="Label2" runat="server" Text="CPF:"></asp:Label>
            <asp:TextBox ID="tb_Cpf" runat="server" ToolTip="OBS.: O CPF DEVE SER DIGITADO COM A PONTAÇÃO. Ex.: XXX.XXX.XXX-XX" Width="288px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_Cpf" EnableClientScript="False" ErrorMessage="*** Erro: O campo cpf é obrigatório." ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="cv_Cpf" runat="server" ControlToValidate="tb_Cpf" EnableClientScript="False" ErrorMessage="*** Erro: O cpf digitado é inválido." OnServerValidate="cv_Cpf_ServerValidate" ForeColor="Red"></asp:CustomValidator>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Data de nascimento:"></asp:Label>
            <asp:TextBox ID="tb_DataNascimento" runat="server" type="date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_DataNascimento" EnableClientScript="False" ErrorMessage="*** Erro: O campo data é obrigatório." ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="cv_DataNascimento" runat="server" ControlToValidate="tb_DataNascimento" EnableClientScript="False" ErrorMessage="*** Data inválida." OnServerValidate="cv_DataNascimento_ServerValidate"></asp:CustomValidator>
        </p>
        <asp:Label ID="Label5" runat="server" Text="E-mail:"></asp:Label>
        <asp:TextBox ID="tb_Email" runat="server" Width="564px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_Email" EnableClientScript="False" ErrorMessage="*** Erro: O campo e-mail é obrigatório." ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_Email" EnableClientScript="False" ErrorMessage="*** Erro: O e-mail digitado é inválido." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <p>
            <asp:Label ID="Label6" runat="server" Text="Vacina:"></asp:Label>
            <asp:DropDownList ID="ddl_Vacina" runat="server">
                <asp:ListItem>... Selecione</asp:ListItem>
                <asp:ListItem Value="CV">CoronaVac</asp:ListItem>
                <asp:ListItem Value="SV">Sputinik V</asp:ListItem>
            </asp:DropDownList>
            <asp:CustomValidator ID="cv_Vacina" runat="server" ControlToValidate="ddl_Vacina" EnableClientScript="False" ErrorMessage="*** Erro: Selecione uma vacina." ForeColor="Red" OnServerValidate="cv_Vacina_ServerValidate"></asp:CustomValidator>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" Text="Alguma vez já contraiu o vírus COVID-19?"></asp:Label>
        </p>
        <p>
            <asp:RadioButtonList ID="rbl_JaContraiu" runat="server" AutoPostBack="True">
                <asp:ListItem Value="S">Sim</asp:ListItem>
                <asp:ListItem Value="N">Não</asp:ListItem>
                <asp:ListItem Value="NS">Não sabe</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="rbl_JaContraiu" EnableClientScript="False" ErrorMessage="*** Erro: Favor informar se já contraiu o vírus ou marcar que não sabe." ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label8" runat="server" Text="Toma algum medicamento controlado?"></asp:Label>
        </p>
        <p>
            <asp:CheckBoxList ID="cbl_Medicamentos" runat="server">
                <asp:ListItem Value="AS">Ansiolíticos</asp:ListItem>
                <asp:ListItem Value="AX">Anorexígenos</asp:ListItem>
                <asp:ListItem Value="AC">Anticonvulsivantes</asp:ListItem>
                <asp:ListItem Value="AD">Antidepressivos</asp:ListItem>
                <asp:ListItem Value="AP">Antiparkinsonianos</asp:ListItem>
                <asp:ListItem Value="ARV">Antirretrovirais</asp:ListItem>
                <asp:ListItem Value="N">Nenhum</asp:ListItem>
            </asp:CheckBoxList>
        </p>
        <p>
            <asp:Label ID="Label9" runat="server" Text="Número do SUS:"></asp:Label>
            <asp:TextBox ID="tb_SUS" runat="server" Width="249px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tb_SUS" EnableClientScript="False" ErrorMessage="*** Erro: O campo número do SUS é obrigatório." ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label10" runat="server" Text="Telefone:"></asp:Label>
            <asp:TextBox ID="tb_Telefone" runat="server" Width="178px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tb_Telefone" EnableClientScript="False" ErrorMessage="*** Erro: O campo telefone é obrigatório." ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label11" runat="server" Text="Endereço:"></asp:Label>
            <asp:TextBox ID="tb_Endereco" runat="server" Width="420px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="tb_Endereco" EnableClientScript="False" ErrorMessage="*** Erro: O campo endereço é obrigatório." ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label12" runat="server" Text="CEP:"></asp:Label>
            <asp:TextBox ID="tb_Cep" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="tb_Cep" EnableClientScript="False" ErrorMessage="*** Erro: O campo CEP é obrigatório." ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Height="29px" OnClick="Button1_Click" style="margin-bottom: 2px" Text="Enviar" />
        </p>
    </form>
</body>
</html>
