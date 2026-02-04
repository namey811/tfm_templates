# Proyecto TFM Terraform
Plantillas en terraform con las mejores practicas de seguridad, siguiendo las mejores practicas.


## Pre-requisitos
1. Instalar Python.
[Descargar](https://www.python.org/downloads/windows/)
2. Instalar Chocolatey (Gestor de paquetes por consola).

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

```
Verifica que chocolatey este instalado
```powershell
choco --version
```
3. Instalar Terraform.
Abre una terminal o powershell como administrador y ejecuta el siguiente comando.

```powershell
choco install terraform
```

4. Instalar AWS CLI.
Abre una terminal o powershell como administrador y ejecuta el siguiente comando.

```powershell
choco install awscli
```

5. Instalar Azure CLI.
Abre una terminal o powershell como administrador y ejecuta el siguiente comando.

```powershell
choco install azure-cli
```

6. Instalar Google GCP.
Abre una terminal o powershell como administrador y ejecuta el siguiente comando.

```powershell
choco install gcloudsdk
```

7. Instalar VSCode y la extension de Terraform.

## Configurar cuentas de AWS, Azure y GCP localmente.

1. Para AWS Se debe ejecutar el siguiente comando:

```bash
aws configure
```

2. Para Azure se debe ejecutar el siguiente comando:
```bash
az login 
```

3. Para GCP se debe ejecutar el siguiente comando y seguir las instrucciones (Otorgar todos los permisos)

```bash 
 gcloud auth application-default login
 ```

## Ejecutar el proyecto

1. Inicializar el proyecto

```bash
terraform init
```
1.1 Reconfigurar el proyecto 
```bash
terraform init -reconfigure
```
2. Validar los archivos y acciones creadas, importante este paso ya que puede detectar posible uso de funciones deprecadas.

```bash
terraform validate
```

3. Verificar lo que se creara en la infraestructura.

```bash 
terraform plan
```

4. Ejecutar los nuevos cambios en la infraestructura.

```bash
terraform apply
```

## Comprobaciones de seguridad usando checkov

1. Instalar la libreria 

```bash 
pip install checkov
```
2. Comprobacion del estado de seguridad del proyecto debemos ubicarnos en la carpeta del proyecto `environments\sandbox\`

```bash
checkov -d .
```