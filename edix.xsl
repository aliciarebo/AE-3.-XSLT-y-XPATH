<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      
      <head>
        <title>Instituto Tecnológico Edix</title>
        <link rel="stylesheet" href="styles.css"/>
      </head>
      
      <body>
        
        <header>
          
          <div class="header">
            
            <h1>
              <xsl:value-of select='//@nombre'/>
            </h1>
            
            <nav>
              
              <div class="nav">
                <xsl:element name="a">
                  <xsl:attribute name="href">
                    <xsl:value-of select="//@web"/>
                  </xsl:attribute>
                Web
                </xsl:element>
                <xsl:element name="a">
                  <xsl:attribute name="href">
                    <xsl:value-of select="//@web"/>
                  </xsl:attribute>
                Ciclos
                </xsl:element>
                <xsl:element name="a">
                  <xsl:attribute name="href">
                    <xsl:value-of select="//@web"/>
                  </xsl:attribute>
                Profesores
                </xsl:element>

              </div>
            </nav>
          </div>
        </header>
        
        <div class="container">
          
          <div class="sub-container1">
            
            <div class="profesores">
              
              <section>
                
                <h3>Profesorado</h3>
                
                <table border="1">
                  <thead>
                    
                    <tr>
                      <th>Id</th>
                      <th>Nombre</th>
                    </tr>
                  
                  </thead>
                  
                  <tbody>
                    
                    <xsl:for-each select="ite/profesores/profesor">
                      <tr>
                        
                        <td>
                          <xsl:value-of select="id"/>
                        </td>
                        <td>
                          <xsl:value-of select="nombre"/>
                        </td>
                      
                      </tr>
                    </xsl:for-each>
                  
                  </tbody>
                
                </table>
              
              </section>
            
            </div>

            <div class="info_centro">
              
              <h3>Dirección del centro</h3>
              
              <xsl:for-each select="ite/director">
                <ul>
                  <li> Director:<xsl:value-of select="nombre"/><br/>Despacho:<xsl:value-of select="despacho"/>
                  </li>
                </ul>
              </xsl:for-each>
              
              <xsl:for-each select="ite/jefe_estudios">
                <ul>
                  <li>Jefe de estudios:<xsl:value-of select="nombre"/><br/>Despacho: <xsl:value-of select="despacho"/></li>
                </ul>
              </xsl:for-each>
            
            </div>

            <div class="ciclo_format">
              
              <section name="Ciclo">
                
                <h3>Ciclos Formativos</h3>
                
                <table border="1">
                  
                  <tr>
                    <th>Nombre</th>
                    <th>Grado</th>
                    <th>Fecha</th>
                  </tr>
                  
                  <xsl:for-each select="ite/ciclos/ciclo">
                    <tr>
                      
                      <td>
                        <xsl:value-of select="nombre"/>
                      </td>
                     
                      <td>
                        <xsl:value-of select="grado"/>
                      </td>
                      
                      <td>
                        <xsl:value-of select="decretoTitulo/@ano"/>
                      </td>
                    
                    </tr>
                  </xsl:for-each>

                </table>

              </section>
            
            </div>

          </div>
          
          <div class="sub-container2">
           
            <aside>
              
              <h4 class="Titulo">Formulario Instituto</h4>

              <form id="formulario-contacto">
                
                <div class="form-field">
                  <label for="nombre">Nombre:</label>
                  <input class="controls" type="text" name="nombres" id="nombres" placeholder="Ingrese su nombre"/>
                </div>

                <div class="form-field">
                  <label for="apellidos">Apellidos:</label>
                  <input class="controls" type="text" name="apellidos" id="apellidos" placeholder="Ingrese sus apellidos"/>
                </div>

                <div class="form-field">
                  <label for="email">Email:</label>
                  <input class="controls" type="email" name="email" id="email" placeholder="Ingrese su email"/>
                </div>

                <div class="form-field">
                  <label for="telefono">Telefono:</label>
                  <input class="controls" type="number" min="9" name="telefono" id="telefono" placeholder="Ingrese su teléfono"/>
                </div>

                <div class="form-field">
                  <label for="ciclo_formativo">Seleccione el ciclo formativo:</label>
                  <select class="desplegable" name="ciclo_formativo">
                    <option value="ASIR">
                      <xsl:value-of select="ite/ciclos/ciclo[1]/nombre"/>
                    </option>
                    <option value="DAW">
                      <xsl:value-of select="ite/ciclos/ciclo[2]/nombre"/>
                    </option>
                    <option value="DAM">
                      <xsl:value-of select="ite/ciclos/ciclo[3]/nombre"/>
                    </option>
                  </select>
                </div>

                <div class="form-field">
                  <label for="observaciones">Comentarios:</label>
                  <textarea style="resize: none;" name="observaciones"/>
                </div>

                <input class="boton" type="submit" value="Enviar"/>

              </form>
           
            </aside>
          
          </div>
       
        </div>
          
        <div class="footer">
            <footer>
              <div class="informacion">
                <p> Empresa: <xsl:value-of select="ite/empresa"/></p>
                <p> Teléfono: <xsl:value-of select="ite/telefono"/></p>
            </div>
            </footer>
          </div>
        
      </body>

    </html>
  </xsl:template>
</xsl:stylesheet>
