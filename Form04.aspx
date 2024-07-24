<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Form04.aspx.cs" Inherits="KPI01.Form04" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .card {
            margin: 20px;
            height: 600px;
        }

        .table-responsive {
            overflow: auto; /* Enable scrolling for table */
        }

        .fixed-header th {
            position: sticky;
            top: 0;
            background: #808080;
            color: white;
            z-index: 2; /* Ensure headers are above the table content */
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
        }

        .fixed-column1 {
            position: sticky;
            left: 0;
            background: #808080;
            color: white;
            z-index: 1; /* Ensure columns are above the table content */
            box-shadow: 2px 0 2px -1px rgba(0, 0, 0, 0.4);
        }

        .table th, .table td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        .table th {
            background: #808080;
            color: white;
        }

        .text-wrap-x {
            word-wrap: break-word;
            white-space: normal; /* ทำให้ข้อความสามารถแสดงผลเป็นหลายบรรทัดได้ */
        }
    </style>

    <div class="container">
        <asp:DropDownList ID="ddlYear" runat="server" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem>2024</asp:ListItem>
            <asp:ListItem>2023</asp:ListItem>
            <asp:ListItem>2022</asp:ListItem>
            <asp:ListItem>2021</asp:ListItem>
            <asp:ListItem>2020</asp:ListItem>
            <asp:ListItem>2019</asp:ListItem>
            <asp:ListItem>2018</asp:ListItem>
        </asp:DropDownList>
    </div>

    <div class="">
        <div class="card">
            <div class="table-responsive">
                <asp:GridView ID="grv1" runat="server" CssClass="table table-bordered fixed-header" Font-Size="Smaller" AutoGenerateColumns="false">
                    <Columns>
                        <asp:TemplateField HeaderText="kpi_id">
                            <HeaderStyle CssClass="fixed-header" BackColor="DarkGray" ForeColor="White" />
                            <ItemStyle CssClass="fixed-column1" BackColor="DarkGray" ForeColor="White" />
                            <ItemTemplate>
                                <%# Eval("kpi_id") %>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Section">
                            <HeaderStyle />
                            <ItemStyle />
                            <ItemTemplate>
                                <%# Eval("section") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="No">
                            <HeaderStyle />
                            <ItemStyle />
                            <ItemTemplate>
                                <%# Eval("no") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Activities">
                            <HeaderStyle />
                            <ItemStyle />
                            <ItemTemplate>
                                <%# Eval("activities") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Desc">
                            <HeaderStyle />
                            <ItemStyle />
                            <ItemTemplate>
                                <%# Eval("desc") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="แหล่งข้อมูล" ItemStyle-Wrap="true">
                            <ItemTemplate>
                                <asp:Label ID="lblsouce" runat="server" Text='<%# Eval("souce") %>' CssClass="text-wrap-x" Width="80px"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="unit" HeaderText="Unit">
                            <ItemStyle Width="200px" />
                            <HeaderStyle Width="200px" />
                        </asp:BoundField>

                        <asp:BoundField DataField="yr" HeaderText="Year">
                            <ItemStyle Width="200px" />
                            <HeaderStyle Width="200px" />
                        </asp:BoundField>

                        <asp:BoundField DataField="m01" HeaderText="Jan">
                            <ItemStyle Width="200px" />
                            <HeaderStyle Width="200px" />
                        </asp:BoundField>

                        <asp:BoundField DataField="m02" HeaderText="Feb">
                            <ItemStyle Width="200px" />
                            <HeaderStyle Width="200px" />
                        </asp:BoundField>

                        <asp:BoundField DataField="m03" HeaderText="Mar">
                            <ItemStyle Width="200px" />
                            <HeaderStyle Width="200px" />
                        </asp:BoundField>

                        <asp:BoundField DataField="m04" HeaderText="Apr">
                            <ItemStyle Width="200px" />
                            <HeaderStyle Width="200px" />
                        </asp:BoundField>

                        <asp:BoundField DataField="m05" HeaderText="May">
                            <ItemStyle Width="200px" />
                            <HeaderStyle Width="200px" />
                        </asp:BoundField>

                        <asp:BoundField DataField="m06" HeaderText="Jun">
                            <ItemStyle Width="200px" />
                            <HeaderStyle Width="200px" />
                        </asp:BoundField>

                        <asp:BoundField DataField="m07" HeaderText="Jul">
                            <ItemStyle Width="200px" />
                            <HeaderStyle Width="200px" />
                        </asp:BoundField>

                        <asp:BoundField DataField="m08" HeaderText="Aug">
                            <ItemStyle Width="200px" />
                            <HeaderStyle Width="200px" />
                        </asp:BoundField>

                        <asp:BoundField DataField="m09" HeaderText="Sep">
                            <ItemStyle Width="200px" />
                            <HeaderStyle Width="200px" />
                        </asp:BoundField>

                        <asp:BoundField DataField="m10" HeaderText="Oct">
                            <ItemStyle Width="200px" />
                            <HeaderStyle Width="200px" />
                        </asp:BoundField>

                        <asp:BoundField DataField="m11" HeaderText="Nov">
                            <ItemStyle Width="200px" />
                            <HeaderStyle Width="200px" />
                        </asp:BoundField>

                        <asp:BoundField DataField="m12" HeaderText="Dec">
                            <ItemStyle Width="200px" />
                            <HeaderStyle Width="200px" />
                        </asp:BoundField>

                        <asp:BoundField DataField="total" HeaderText="Total">
                            <ItemStyle Width="200px" />
                            <HeaderStyle Width="200px" />
                        </asp:BoundField>

                        <asp:BoundField DataField="average" HeaderText="Average">
                            <ItemStyle Width="200px" />
                            <HeaderStyle Width="200px" />
                        </asp:BoundField>

                        <asp:BoundField DataField="target_result" HeaderText="Target Result">
                            <ItemStyle Width="200px" />
                            <HeaderStyle Width="200px" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
