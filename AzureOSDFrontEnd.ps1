#==============================================================================================
# Title: Azure OSD Front End 3.1
# Created: 12/1/2019
# Updated: 11/18/2020
# 3.1 Fixes
# Author: Brandon Linton
# Version: 3.1
#==============================================================================================

#==============================================================================================
# XAML Code - Imported from Visual Studio Express WPF Application
#==============================================================================================	

$ScriptPath = Split-Path $script:MyInvocation.MyCommand.Path
$XAML = @"
<Window x:Name="MainWindow1" x:Class="OSDFrontEnd3._0.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:OSDFrontEnd3._0"
        mc:Ignorable="d"
        Title="Azure OSD Front End 3.1" Height="450" Width="800" Topmost="True" WindowStartupLocation="CenterScreen" SizeToContent="Manual" MinWidth="750" MinHeight="350" WindowStyle="ThreeDBorderWindow">
    <Grid>
        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="343*"/>
            <ColumnDefinition Width="450*"/>
        </Grid.ColumnDefinitions>
        <Image HorizontalAlignment="Stretch" Height="78" Margin="0,0,0,0" VerticalAlignment="Top" Width="Auto" Source="$ScriptPath\CompanyLogo.png" Stretch="Fill" Grid.ColumnSpan="2"/>
        <TabControl x:Name="TabControl_Main" HorizontalAlignment="Stretch" Margin="10,100,10.333,38.667" VerticalAlignment="Stretch" Width="Auto" Grid.ColumnSpan="2">
            <TabItem x:Name="Tab_Azure" Header="Azure">
                <Grid Background="#FFE5E5E5">
                    <Button x:Name="Button_AzureSignin" Content="Sign in" HorizontalAlignment="Left" Margin="10,68,0,0" VerticalAlignment="Top" Width="120" RenderTransformOrigin="0.641,3.255" Height="25.571"/>
                    <Image x:Name="Image_AzureSignin" HorizontalAlignment="Left" Height="24" Margin="150.56,69.571,0,0" VerticalAlignment="Top" Width="24" RenderTransformOrigin="-12.86,2.98"/>
                    <Label x:Name="Label_AzureConnect" Content="Select Azure Environment to Connect" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top" Width="264.481" FontWeight="Bold"/>
                    <ComboBox x:Name="ComboBox_AzureEnvironment" HorizontalAlignment="Left" Margin="10,41,0,0" VerticalAlignment="Top" Width="237.506" IsReadOnly="True"/>
                    <ComboBox x:Name="ComboBox_AzureRG" HorizontalAlignment="Left" Margin="523.402,14,0,0" VerticalAlignment="Top" Width="184.578" IsReadOnly="True" RenderTransformOrigin="-0.175,-2.363"/>
                    <ComboBox x:Name="ComboBox_AzureLocation" HorizontalAlignment="Left" Margin="523.402,53.716,0,0" VerticalAlignment="Top" Width="184.578" RenderTransformOrigin="0.417,6.541" IsReadOnly="True"/>
                    <Label x:Name="Label_AzureResourceGroup" Content="Resource Group:" HorizontalAlignment="Left" Margin="381.167,10,0,0" VerticalAlignment="Top" Width="125.466" FontWeight="Bold"/>
                    <Label x:Name="Label_AzureLocation" Content="Location:" HorizontalAlignment="Left" Margin="381.167,49.716,0,0" VerticalAlignment="Top" Width="125.466" FontWeight="Bold"/>
                    <Label x:Name="Label_AzureImage" Content="Image:" HorizontalAlignment="Left" Margin="381.167,97.127,0,0" VerticalAlignment="Top" Width="125.466" FontWeight="Bold"/>
                    <ComboBox x:Name="ComboBox_AzureImage" HorizontalAlignment="Left" Margin="523.402,101.127,0,0" VerticalAlignment="Top" Width="184.578" RenderTransformOrigin="0.417,6.541" IsReadOnly="True"/>
                    <Label x:Name="Label_AzureVMSize" Content="VM Size:" HorizontalAlignment="Left" Margin="381.167,140.451,0,0" VerticalAlignment="Top" Width="125.466" FontWeight="Bold"/>
                    <ComboBox x:Name="ComboBox_AzureVMSize" HorizontalAlignment="Left" Margin="523.402,144.451,0,0" VerticalAlignment="Top" Width="184.578" RenderTransformOrigin="0.417,6.541" IsReadOnly="True"/>
                </Grid>
            </TabItem>
            <TabItem x:Name="Tab_General" Header="General">
                <Grid Background="#FFE5E5E5" Margin="0">
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition Width="185*"/>
                        <ColumnDefinition Width="582*"/>
                    </Grid.ColumnDefinitions>
                    <ListBox x:Name="ListBoxItem_General" HorizontalAlignment="Left" Height="93" Margin="10,38,0,0" VerticalAlignment="Top" Width="164">
                        <ListBoxItem x:Name="ListboxItem_GeneralWorkstation" Content="Workstation" IsSelected="True"/>
                        <ListBoxItem x:Name="ListBoxItem_GeneralServer" Content="Server"/>
                        <ListBoxItem x:Name="ListBoxItem_GeneralManual" Content="Manual"/>
                    </ListBox>
                    <Label x:Name="Label_DeploymentTypeListBoxItem" Content="Select a Deployment Type:" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top" Width="164" FontWeight="Bold"/>
                    <Label x:Name="Label_GeneralComputerName" Content="Computer Name:" HorizontalAlignment="Left" Margin="105.266,10,0,0" VerticalAlignment="Top" RenderTransformOrigin="0.32,0.094" Width="113" FontWeight="Bold" Grid.Column="1"/>
                    <TextBox x:Name="TextBox_GeneralComputerName" HorizontalAlignment="Left" Height="23" Margin="285.266,14,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="184" MaxLength="15" CharacterCasing="Upper" Grid.Column="1" />
                    <Label x:Name="Label_GeneralSiteCode" Content="Site Code:" HorizontalAlignment="Left" Margin="105.333,74,0,0" VerticalAlignment="Top" Width="96" FontWeight="Bold" RenderTransformOrigin="0.493,-0.207" Grid.Column="1"/>
                    <ComboBox x:Name="ComboBox_GeneralSiteCode" HorizontalAlignment="Left" Margin="285.333,78,0,0" VerticalAlignment="Top" Width="184" IsReadOnly="True" Grid.Column="1"/>
                    <Image x:Name="Image_StatusCheck" HorizontalAlignment="Left" Height="24" Margin="474.266,14,0,0" VerticalAlignment="Top" Width="24" Grid.Column="1"/>
                    <Label x:Name="Label_GeneralComputerDescription" Content="Computer Description:" HorizontalAlignment="Left" Margin="105.333,43,0,0" VerticalAlignment="Top" RenderTransformOrigin="0.32,0.094" Width="150" FontWeight="Bold" Grid.Column="1"/>
                    <TextBox x:Name="TextBox_GeneralComputerDescription" HorizontalAlignment="Left" Height="23" Margin="285.333,43,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="184" Grid.Column="1" SpellCheck.IsEnabled="True" />
                    <Label x:Name="Label_GeneralTimeZone" Content="Time Zone:" HorizontalAlignment="Left" Margin="105.333,105,0,0" VerticalAlignment="Top" Width="113" FontWeight="Bold" Grid.Column="1"/>
                    <ComboBox x:Name="ComboBox_GeneralTimeZone" HorizontalAlignment="Left" Margin="285.333,109,0,0" VerticalAlignment="Top" Width="184" Grid.Column="1"/>
                </Grid>
            </TabItem>
            <TabItem x:Name="Tab_Network" Header="Network">
                <Grid Background="#FFE5E5E5">
                    <Label x:Name="Label_NetworkDomainOrWorkGroup" Content="Domain or Workgroup Join:" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top" RenderTransformOrigin="0.496,-0.367" Width="176" FontWeight="Bold"/>
                    <ListBox x:Name="ListBox_Network" HorizontalAlignment="Left" Height="65" Margin="10,50,0,0" VerticalAlignment="Top" Width="176">
                        <ListBoxItem x:Name="ListBoxItem_NetworkDomain" Content="Domain" IsSelected="True"/>
                        <ListBoxItem x:Name="ListBoxItem_NetworkWorkgroup" Content="Workgroup"/>
                    </ListBox>
                    <Label x:Name="Label_NetworkDomain" Content="Domain:" HorizontalAlignment="Left" Margin="383,18,0,0" VerticalAlignment="Top" Width="100" FontWeight="Bold"/>
                    <ComboBox x:Name="ComboBox_NetworkDomain" Margin="512,22,0,0" VerticalAlignment="Top" Width="232" HorizontalAlignment="Left"/>
                    <Label x:Name="Label_NetworkOU" Content="Organizational Unit:" HorizontalAlignment="Left" Margin="383,65,0,0" VerticalAlignment="Top" Width="135" FontWeight="Bold"/>
                    <ComboBox x:Name="ComboBox_NetworkOU" HorizontalAlignment="Left" Margin="512,69,0,0" VerticalAlignment="Top" Width="232"/>
                </Grid>
            </TabItem>
            <TabItem x:Name="Tab_Role" Header="Role" Height="22" Margin="-2,-2,-1.667,0" VerticalAlignment="Bottom">
                <Grid Background="#FFE5E5E5">
                    <Label x:Name="Label_Role" Content="Select an Image Type:" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top" Width="158" FontWeight="Bold"/>
                    <ListBox x:Name="ListBox_Role" HorizontalAlignment="Left" Height="125" Margin="10,41,0,0" VerticalAlignment="Top" Width="350" Grid.ColumnSpan="3">
                        <ListBoxItem x:Name="ListBoxItem_Role_B1" Content="SHB Corporate Image - Full Build" IsSelected="True"/>
                        <ListBoxItem x:Name="ListBoxItem_Role_B2" Content="SHB Base Image - Required Applications Only"/>
                        <ListBoxItem x:Name="ListBoxItem_Role_B3" Content="SHB UMC Image - Unmanaged BYOD"/>
                        <ListBoxItem x:Name="ListBoxItem_Role_B4" Content="SHB Domain Controller Image - DS Specific Applications"/>
                    </ListBox>
                </Grid>
            </TabItem>
            <TabItem x:Name="Tab_Summary" Header="Summary">
                <Grid Background="#FFE5E5E5">
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition Width="225*"/>
                        <ColumnDefinition Width="541*"/>
                    </Grid.ColumnDefinitions>
                    <Label x:Name="Label_Summary" Content="Summary Results:" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top" Width="124" FontWeight="Bold"/>
                    <ListBox x:Name="ListBox_SummaryResults" Margin="0,40,0,0" Grid.ColumnSpan="2"/>
                </Grid>
            </TabItem>
        </TabControl>
        <Button x:Name="Button_Back" Content="&lt; Back" HorizontalAlignment="Right" Margin="0,0,179,12.667" VerticalAlignment="Bottom" Width="75" RenderTransformOrigin="4.017,0.143" Grid.Column="1"/>
        <Button x:Name="Button_Next" Content="Next &gt;" Grid.Column="1" HorizontalAlignment="Right" Margin="0,0,99,12.667" VerticalAlignment="Bottom" Width="75"/>
        <Button x:Name="Button_Finish" Content="Finish" Grid.Column="1" HorizontalAlignment="Right" Margin="0,0,19,12.667" VerticalAlignment="Bottom" Width="75"/>
    </Grid>
</Window>
"@

# Format XAML
[xml]$xaml = $xaml -replace 'mc:Ignorable="d"','' -replace "x:N",'N' -replace '^<Win.*', '<Window'
#Read XAML
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
$UIReader=(New-Object System.Xml.XmlNodeReader $xaml)
try{$UIWindow=[Windows.Markup.XamlReader]::Load($UIReader)}
catch{Write-Host "Unable to load Windows.Markup.XamlReader:$($_.Exception.Message)"; exit}
#===========================================================================
# Store Form Objects In PowerShell
#===========================================================================
$xaml.SelectNodes("//*[@Name]") | ForEach-Object {Set-Variable -Name "WPF$($_.Name)" -Value $UIWindow.FindName($_.Name)}

#===========================================================================
# Set Variables
#===========================================================================

$TimeZones = (Get-TimeZone -ListAvailable)
$serial = (Get-WmiObject -Class Win32_Bios).SerialNumber -replace "\W", "" -replace "VMware", ""

#===========================================================================
# Functions
#===========================================================================
    # Logging Function
	function global:Write-LogEntry {
		param (
			[parameter(Mandatory = $true, HelpMessage = "Value added to the log file.")]
			[ValidateNotNullOrEmpty()]
			[string]$Value,
			[parameter(Mandatory = $true, HelpMessage = "Severity for the log entry. 1 for Informational, 2 for Warning and 3 for Error.")]
			[ValidateNotNullOrEmpty()]
			[ValidateSet("1", "2", "3")]
            [string]$Severity,
            [parameter(Mandatory = $false, HelpMessage = "Variable for skipping verbose output to the GUI.")]
			[ValidateNotNullOrEmpty()]
			[boolean]$SkipGuiLog
		)
		# Determine log file location
		$global:LogFilePath = $logFile
		
		# Construct time stamp for log entry
		$Time = -join @((Get-Date -Format "HH:mm:ss.fff"), " ", (Get-WmiObject -Class Win32_TimeZone | Select-Object -ExpandProperty Bias))
		
		# Construct date for log entry
		$Date = (Get-Date -Format "MM-dd-yyyy")
		
		# Construct context for log entry
		$Context = $([System.Security.Principal.WindowsIdentity]::GetCurrent().Name)
		
		# Construct final log entry
		$LogText = "<![LOG[$($Value)]LOG]!><time=""$($Time)"" date=""$($Date)"" component=""OSDFrontEnd"" context=""$($Context)"" type=""$($Severity)"" thread=""$($PID)"" file="""">"
		
		# Add value to log file
		try {
			Out-File -InputObject $LogText -Append -NoClobber -Encoding Default -FilePath $global:LogFilePath -ErrorAction Stop
		}
		catch [System.Exception] {
			Write-Warning -Message "Unable to append log entry to $($logfile) file. Error message: $($_.Exception.Message)"
		}
		
        # GUI Logging Section
		if ($SkipGuiLog -ne $true) {
			# Set Error GUI Log Window Colour
			if ($Severity -eq "3") {
                $WPFListBox_SummaryResults.Foreground="#FFF31E1E"
            Elseif($Severity -eq "2"){
                $WPFListBox_SummaryResults.Foreground="#FFF1FB06"
                }   
			}
			
			# Add GUI Log Window Section Block
			if ($Value -like "*==*==*") {
				$WPFListBox_SummaryResults.Items.Add(" ")
			}
			
            # Update GUI Log Window
			$WPFListBox_SummaryResults.Items.Add("$Value")
			$WPFListBox_SummaryResults.SelectedIndex = $WPFListBox_SummaryResults.Items.Count - 1;
			$WPFListBox_SummaryResults.SelectedIndex = -1;
		}
    }

    # Load ComObject and setup Logfile
    Try
	{
		#create Log
		$logFile = "$PSScriptRoot\$($myInvocation.MyCommand).log"
        New-Item -ItemType File $logFile -Force | Out-Null
        $AzureScriptFile = "$PSScriptRoot\AzureCustomData.txt"
        New-Item -ItemType File $AzureScriptFile -Force | Out-Null
		# Start the logging 
        global:Write-LogEntry -Value "Info: TS Environment Succesfully loaded" -Severity 1 -SkipGuiLog $true
	}
	Catch
	{
		#create Log
		$logPath = "$ENV:WINDIR\Temp"
		$logFile = "$logPath\$($myInvocation.MyCommand).log"
        New-Item -ItemType File $logFile -Force | Out-Null
        $AzureScriptFile = "$PSScriptRoot\AzureCustomData.txt"
        New-Item -ItemType File $AzureScriptFile -Force | Out-Null
		# Start the logging 
        global:Write-LogEntry -Value "Warning: TS Environment failed to load with the following error:$error" -Severity 2 -SkipGuiLog $true
	}

#===========================================================================
# Initialize Objects
#===========================================================================
$WPFTextBox_GeneralComputerName.IsReadOnly = $true
$WPFComboBox_GeneralTimeZone.SelectedItem = '(UTC-05:00) Eastern Time (US & Canada)'
$WPFComboBox_NetworkDomain.SelectedItem = $WPFComboBox_NetworkDomain.SelectedIndex = 0
$WPFComboBox_AzureVMSize.SelectedItem = 'Standard D2d_v4'
$WPFButton_Back.IsEnabled = $False
$WPFButton_Next.IsEnabled = $False
$WPFButton_Finish.IsEnabled = $False
$WPFButton_AzureSignin.IsEnabled = $False
$WPFListBox_Role.Items[3].IsEnabled = $False
$WPFListBox_Role.Items[2].IsEnabled = $False
$ScriptRelease = '3.1'

#===========================================================================
# Add events to Form Objects
#===========================================================================
# Deployment Type Action
$WPFListBoxItem_General.ToolTip="Please Select a Deployment Type."
$WPFListBoxItem_General.Add_SelectionChanged({
    global:Write-LogEntry -Value "Info: Deployment Type Selection:$(($WPFListBoxItem_General.SelectedItem.Content))" -Severity 1 -SkipGuiLog $true
    If($WPFListBoxItem_General.SelectedItem.Content -eq 'Workstation'){$WPFTextBox_GeneralComputerName.Clear();$WPFTextBox_GeneralComputerDescription.Clear();$WPFTextBox_GeneralComputerName.IsReadOnly = $True;$WPFComboBox_GeneralSiteCode.IsEnabled = $True;$WPFListBox_Role.Items[3].IsEnabled = $False;$WPFListBox_Role.Items[2].IsEnabled = $False;$WPFComboBox_GeneralSiteCode.Focus()}
    ElseIf($WPFListBoxItem_General.SelectedItem.Content -eq 'Manual'){$WPFTextBox_GeneralComputerName.Clear();$WPFTextBox_GeneralComputerDescription.Clear();$WPFTextBox_GeneralComputerName.IsReadOnly = $False;$WPFComboBox_GeneralSiteCode.IsEnabled = $True;$WPFListBox_Role.Items[3].IsEnabled = $True;$WPFListBox_Role.Items[2].IsEnabled = $False;$WPFComboBox_NetworkOU.Items.Clear();$WPFListBoxItem_RoleDCImage.Visibility = 'Visible';$WPFTextBox_GeneralComputerName.Focus()
    Import-Csv $ScriptPath\OUs.ini -Delimiter ";" | Where-Object {$_.Domain -eq $($WPFComboBox_NetworkDomain.SelectedItem)} | Sort-Object Path -Unique | ForEach-Object { $WPFComboBox_NetworkOU.Items.Add($_.Name)} | Out-Null
    }
    Else{$WPFComboBox_GeneralSiteCode.SelectedIndex = -1 ;$WPFTextBox_GeneralComputerName.IsReadOnly = $False;$WPFTextBox_GeneralComputerName.Focus();$WPFTextBox_GeneralComputerDescription.Clear();$WPFComboBox_GeneralSiteCode.IsEnabled = $False;$WPFListBox_Role.Items[3].IsEnabled = $True;$WPFListBox_Role.Items[2].IsEnabled = $False;$WPFTextBox_GeneralComputerName.Clear()}
    $WPFComboBox_NetworkOU.Items.Clear()
    Import-Csv $ScriptPath\OUs.ini -Delimiter ";" | Where-Object {$_.Type -eq $($WPFListBoxItem_General.SelectedItem.Content) -and $_.Domain -eq $($WPFComboBox_NetworkDomain.SelectedItem)} | Sort-Object Path -Unique | ForEach-Object { $WPFComboBox_NetworkOU.Items.Add($_.Name)} | Out-Null
})


# Airport Code Type Action
$WPFComboBox_GeneralSiteCode.ToolTip="Please Select an Airport Code Close to your region."
$WPFComboBox_GeneralSiteCode.Add_SelectionChanged({
    global:Write-LogEntry -Value "Info: Airport Code Selected:$(($WPFComboBox_GeneralSiteCode).SelectedItem)" -Severity 1 -SkipGuiLog $true
    $WPFTextBox_GeneralComputerName.Text = $WPFComboBox_GeneralSiteCode.SelectedItem + $SystemType + $serial.Substring($serial.Length - 7, 7)
})

# Timezone Type Action
$WPFComboBox_GeneralTimeZone.ToolTip="Please Select your Local Time zone"
$WPFComboBox_GeneralTimeZone.Add_SelectionChanged({
    Foreach ($TimeZone in $TimeZones)
    {
        If ($TimeZone.DisplayName -eq $(($WPFComboBox_GeneralTimeZone).SelectedItem)) { $global:WPFGeneralTimeZone = $TimeZone.Id;Set-TimeZone -Id $(($global:WPFGeneralTimeZone))}
    }
    global:Write-LogEntry -Value "Info: Timezone Selected:$(($WPFComboBox_GeneralTimeZone).SelectedItem)" -Severity 1 -SkipGuiLog $true
})
  
# Computer Name Text Box Change Event
$WPFTextBox_GeneralComputerName.Add_TextChanged({
    If ($WPFTextBox_GeneralComputerName.Text.Length -le 0)
    {
        global:Write-LogEntry -Value "Warning: Computer Name cannot be empty" -Severity 2 -SkipGuiLog $true
        $WPFImage_StatusCheck.Source = "$ScriptPath\Failure.png"
        $WPFTextBox_GeneralComputerName.ToolTip="Computer Name cannot be empty"
        $WPFButton_Next.IsEnabled = $False
    }
    elseif ($WPFTextBox_GeneralComputerName.Text.Length -lt 5)
    {
        global:Write-LogEntry -Value "Warning: Computer Name must be greater than 5 characters and less than 15 characters" -Severity 2 -SkipGuiLog $true
        $WPFImage_StatusCheck.Source = "$ScriptPath\Failure.png"
        $WPFTextBox_GeneralComputerName.ToolTip="Computer Name must be greater than 5 characters and less than 15 characters"
        $WPFButton_Next.IsEnabled = $False
    }
    elseif ($WPFTextBox_GeneralComputerName.Text -match "^[-_]|[^\w-_]")
    {
        global:Write-LogEntry -Value "Warning: Invalid Character please correct." -Severity 2 -SkipGuiLog $true
        $WPFImage_StatusCheck.Source = "$ScriptPath\Failure.png"
        $WPFTextBox_GeneralComputerName.ToolTip='Invalid Character please correct.'
        $WPFTextBox_GeneralComputerName.Text = $WPFTextBox_GeneralComputerName.Text -replace "^[-_]|[^\w-_]", ""
        $WPFTextBox_GeneralComputerName.Focus();
        $WPFTextBox_GeneralComputerName.SelectionStart = $WPFTextBox_GeneralComputerName.Text.Length;
    }
    else
    {
        $WPFImage_StatusCheck.Source = "$ScriptPath\Success.png"
        $WPFTextBox_GeneralComputerName.ToolTip="Computer Name format is correct."
        $WPFButton_Next.IsEnabled = $True
    }
})

# Computer Description Event
$WPFTextBox_GeneralComputerDescription.ToolTip = "Optional Computer Description, If used be descriptive with user and or location information."

# Domain or Workgroup ListBox Change Event
$WPFListBox_Network.ToolTip="Please Select if you would like to join a workgroup or domain."
$WPFListBox_Network.Add_SelectionChanged({
  global:Write-LogEntry -Value "Info: Domain or Workgroup Selection:$(($WPFListBox_Network).SelectedItem.Content)" -Severity 1 -SkipGuiLog $true
  If($WPFListBox_Network.SelectedItem.Content -eq 'Workgroup'){$WPFComboBox_NetworkDomain.IsEnabled = $False;$WPFComboBox_NetworkOU.IsEnabled = $False;$WPFComboBox_NetworkOU.Items.Clear();$WPFComboBox_NetworkDomain.SelectedIndex = -1;$WPFButton_Next.IsEnabled = $True}
  ElseIf($WPFListBox_Network.SelectedItem.Content -eq 'Domain'){$WPFComboBox_NetworkDomain.IsEnabled = $True;$WPFComboBox_NetworkOU.IsEnabled = $True}
})

# Domain ComboBox Change Event
$WPFComboBox_NetworkDomain.ToolTip="Please select a domain to join."
$WPFComboBox_NetworkDomain.Add_SelectionChanged({
    If($WPFListBox_Network.SelectedItem.Content -ne 'Workgroup'){global:Write-LogEntry -Value "Info: Domain Selected:$(($WPFComboBox_NetworkDomain).SelectedItem)" -Severity 1 -SkipGuiLog $true}
    $WPFComboBox_NetworkOU.Items.Clear()
    Import-Csv $ScriptPath\OUs.ini -Delimiter ";" | Where-Object {$_.Type -eq $($WPFListBoxItem_General.SelectedItem.Content) -and $_.Domain -eq $($WPFComboBox_NetworkDomain.SelectedItem)} | Sort-Object Path -Unique | ForEach-Object { $WPFComboBox_NetworkOU.Items.Add($_.Name)} | Out-Null
})

# Network OU ComboBox Change Event
$WPFComboBox_NetworkOU.ToolTip="Please select an OU or the Computers Container to omit an OU."
$WPFComboBox_NetworkOU.Add_SelectionChanged({
    global:Write-LogEntry -Value "Info: OU Selected:$(($WPFComboBox_NetworkOU).SelectedItem)" -Severity 1 -SkipGuiLog $true
    $OUs = Import-Csv $ScriptPath\OUs.ini -Delimiter ";" | Where-Object {$_.Type -eq $($WPFListBoxItem_General.SelectedItem.Content) -and $_.Domain -eq $($WPFComboBox_NetworkDomain.SelectedItem)} | Sort-Object Path -Unique
    Foreach ($OU in $OUs)
        {
            If ($OU.Name -eq $(($WPFComboBox_NetworkOU).SelectedItem)) { $global:WPFComboBox_NetworkOUPath = $OU.Path.Replace("'", "")}
        }
        $WPFComboBox_NetworkOU.ToolTip="Selected OU Path:$($global:WPFComboBox_NetworkOUPath)"
})

# Role type Change Event
$WPFListBoxItem_Role_B1.ToolTip = "SHB Corporate Image this is the default and preferred selection which includes STIGS, Applications and Updates."
$WPFListBoxItem_Role_B2.ToolTip = "SHB Base Image selection which includes STIGS and only Security Required Applications and Updates.  DO NOT Use unless you have an approved requirement"
$WPFListBoxItem_Role_B3.ToolTip = "SHB UMC Image selection which includes STIGS and only Security Required Applications and Updates.  DO NOT Use unless you have an approved requirement and are a member of the Directory Services Team."
$WPFListBoxItem_Role_B4.ToolTip = "SHB Domain Controller Image selection which includes STIGS and only Security Required Applications and Updates.  DO NOT Use unless you have an approved requirement and are a member of the Directory Services Team."
$WPFListBox_Role.ToolTip = "Please select a Role to deploy the standard image is the default"
$WPFListBox_Role.Add_SelectionChanged( {
        global:Write-LogEntry -Value "Info: Role Selected:$(($WPFListBox_Role).SelectedItem)" -Severity 1 -SkipGuiLog $true
    })

# Update Summary
Function Update-Summary{
#Update Summary Results
$WPFListBox_SummaryResults.Items.Clear()
# Initialise Form
global:Write-LogEntry -Value "======== INITIALIZING LOG FILE ========" -Severity 1
global:Write-LogEntry -Value "Info: OSD Front End version - $ScriptRelease" -Severity 1
global:Write-LogEntry -Value "Info: Log File Location - $global:LogFilePath" -Severity 1
global:Write-LogEntry -Value "Info: Settings File Location - $ScriptPath" -Severity 1
global:Write-LogEntry -Value "Info: Azure Custom Data File Location - $AzureScriptFile" -Severity 1

global:Write-LogEntry -Value "======== User Selected Results ========" -Severity 1
global:Write-LogEntry -Value "Info: Computer Name: $(($WPFTextBox_GeneralComputerName).Text)" -Severity 1
global:Write-LogEntry -Value "Info: Computer Description: $(($WPFTextBox_GeneralComputerDescription).Text)" -Severity 1
global:Write-LogEntry -Value "Info: Time Zone: $(($WPFComboBox_GeneralTimeZone).SelectedItem)" -Severity 1
    global:Write-LogEntry -Value "Info: Role: $(($WPFListBox_Role).SelectedItem.Content)" -Severity 1
If($WPFListBox_Network.SelectedItem.Content -eq 'Domain'){
global:Write-LogEntry -Value "Info: Domain: $(($WPFComboBox_NetworkDomain).SelectedItem)" -Severity 1
global:Write-LogEntry -Value "Info: Organizational Unit Name: $(($WPFComboBox_NetworkOU).SelectedItem)" -Severity 1
global:Write-LogEntry -Value "Info: Organizational Unit LDAP Path: $($global:WPFComboBox_NetworkOUPath)" -Severity 1
}Else{
global:Write-LogEntry -Value "Info: Workgroup: $(($WPFListBox_Network).SelectedItem.Content)" -Severity 1
    }
    global:Write-LogEntry -Value "======== User Azure Selected Results ========" -Severity 1
    global:Write-LogEntry -Value "Info: Azure Resource Group: $(($WPFComboBox_AzureRG).SelectedItem)" -Severity 1
    global:Write-LogEntry -Value "Info: Azure Location: $(($WPFComboBox_AzureLocation).SelectedItem)" -Severity 1
    global:Write-LogEntry -Value "Info: Azure Image: $(($WPFComboBox_AzureImage).SelectedItem)" -Severity 1
    global:Write-LogEntry -Value "Info: Azure Location: $(($WPFComboBox_AzureVMSize).SelectedItem)" -Severity 1
}

Function CreateAzureVM{
    $AzureCustomData = Get-Content -Raw -Path $PSScriptRoot\AzureCustomData.txt | ConvertFrom-StringData
    $CustomData = Get-Content -Raw -Path $PSScriptRoot\AzureCustomData.txt 

    $VMLocalAdminUser = "AZTEMP"
    $VMLocalAdminSecurePassword = ConvertTo-SecureString '!Q@W3e4r5t6y7u8i' -AsPlainText -Force
    $Credential = New-Object System.Management.Automation.PSCredential ($VMLocalAdminUser, $VMLocalAdminSecurePassword)
    $LocationName = $AzureCustomData.OSDAzureLocation
    $ResourceGroupName = $AzureCustomData.OSDAzureRG
    $ComputerName = $AzureCustomData.OSDComputerName
    $VMName = $AzureCustomData.OSDComputerName
    $VMImage = $AzureCustomData.OSDAzureImage
    $VMSize = $AzureCustomData.OSDAzureVMSize
    $SecurityGroupName = $VMName + "-nsg"
    $TimeZone = $AzureCustomData.OSDTimeZone
    # SHB Configuration and Applications
    $CustomScriptExtensionURI = 'https://msazlintnouspa041411160.blob.core.usgovcloudapi.net/scripts/InstallCMClientBootStrapper.ps1'
  
    $NetworkName = "ServerNetwork"
    $NICName = $VMName
    $SubnetName = "default"

    #Get the subnet details for the specified virtual network + subnet combination.
    $azureVnetSubnet = (Get-AzVirtualNetwork -Name $NetworkName -ResourceGroupName $ResourceGroupName).Subnets | Where-Object { $_.Name -eq $SubnetName }
    $rule1 = New-AzNetworkSecurityRuleConfig -Name RDP -Description "Allow RDP" `
        -Access Allow -Protocol Tcp -Direction Inbound -Priority 300 -SourceAddressPrefix `
        Internet -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 3389

    $nsg = New-AzNetworkSecurityGroup -ResourceGroupName $ResourceGroupName -Location $LocationName -Name $SecurityGroupName -SecurityRules $rule1
    $NIC = New-AzNetworkInterface -Name $NICName -ResourceGroupName $ResourceGroupName -Location $LocationName -SubnetId $azureVnetSubnet.Id
    $NIC.NetworkSecurityGroup = $nsg
    $NIC | Set-AzNetworkInterface
 
    $VirtualMachine = New-AzVMConfig -VMName $VMName -VMSize $VMSize
    $VirtualMachine = Set-AzVMOperatingSystem -VM $VirtualMachine -Windows -ComputerName $ComputerName -Credential $Credential -ProvisionVMAgent -EnableAutoUpdate -TimeZone $TimeZone -CustomData $CustomData
    $VirtualMachine = Add-AzVMNetworkInterface -VM $VirtualMachine -Id $NIC.Id
    #$VirtualMachine = Set-AzVMBootDiagnostic -VM $VirtualMachine -Disable
    $VirtualMachine = Set-AzVMSourceImage -VM $VirtualMachine -PublisherName 'MicrosoftWindowsServer' -Offer 'WindowsServer' -Skus $VMImage -Version latest
    #$VirtualMachine = Set-AzVMOSDisk -VM $VirtualMachine -StorageAccountType "Premium_LRS" -Caching ReadWrite -Name $azureVmOsDiskName -CreateOption FromImage
    New-AzVM -ResourceGroupName $ResourceGroupName -Location $LocationName -VM $VirtualMachine -LicenseType "Windows_Server" -DisableBginfoExtension -Verbose

    Set-AzVMCustomScriptExtension `
        -Name "SHBImageConfiguration" `
        -ResourceGroupName $ResourceGroupName `
        -VMName $vmName `
        -FileUri $CustomScriptExtensionURI `
        -Location $LocationName `
        -Run 'InstallCMClientBootStrapper.ps1'
}

# Azure Signin Button Action
$WPFButton_AzureSignin.Add_Click({
    $WPFButton_AzureSignin.Cursor = "Wait"
    if (!(Get-InstalledModule -Name Az -ErrorAction SilentlyContinue)) {
        Try{
            global:Write-LogEntry -Value "Info: Installing Azure Powershell Module" -Severity 1
            Install-Module -Name Az -AllowClobber -Scope AllUsers -Repository PSGallery -Verbose -Confirm:$false -Force 
            global:Write-LogEntry -Value "Info: Importing Azure Powershell Module into session." -Severity 1
            Import-Module -Name Az -Verbose -Force
            }
        Catch{$WPFImage_AzureSignin.Source = "$ScriptPath\Failure.png";global:Write-LogEntry -Value "Failure: Failed to install/import Azure Powershell Module into session." -Severity 3;Break}
    }
    Else{
        global:Write-LogEntry -Value "Info: Azure Powershell Module already installed." -Severity 1
        global:Write-LogEntry -Value "Info: Importing Azure Powershell Module into session." -Severity 1
        Import-Module -Name Az -Verbose -Force
    }
    if (!(Get-AzSubscription -ErrorAction SilentlyContinue)) {
        Try{
            global:Write-LogEntry -Value "Info: Attempting to Sign in..." -Severity 1
            Connect-AzAccount -UseDeviceAuthentication -Environment $($WPFComboBox_AzureEnvironment.SelectedItem) -Verbose
        }Catch{$WPFImage_AzureSignin.Source = "$ScriptPath\Failure.png";global:Write-LogEntry -Value "Failure: Failed to Sign in..." -Severity 3;Break}
    }
    Else{
        global:Write-LogEntry -Value "Info: Skipping already Signed in..." -Severity 1
    }
    
    (Get-AzResourceGroup).ResourceGroupName | ForEach-Object { $WPFComboBox_AzureRG.Items.Add($_) } | Out-Null
    (Get-AzLocation).Location | ForEach-Object { $WPFComboBox_AzureLocation.Items.Add($_) } | Out-Null
    If (($WPFComboBox_AzureRG.SelectedItem) -and ($WPFComboBox_AzureLocation.SelectedItem) -and ($WPFComboBox_AzureImage.SelectedItem) -and ($WPFComboBox_AzureVMSize.SelectedItem)) { $WPFButton_Next.IsEnabled = $True } 
    $WPFButton_AzureSignin.Cursor = ""
    $WPFImage_AzureSignin.Source = "$ScriptPath\Success.png"
})

$WPFComboBox_AzureRG.Add_SelectionChanged( {
        If (($WPFComboBox_AzureRG.SelectedItem) -and ($WPFComboBox_AzureLocation.SelectedItem) -and ($WPFComboBox_AzureImage.SelectedItem) -and ($WPFComboBox_AzureVMSize.SelectedItem)) { $WPFButton_Next.IsEnabled = $True }    
})

$WPFComboBox_AzureLocation.Add_SelectionChanged( {
        If (($WPFComboBox_AzureRG.SelectedItem) -and ($WPFComboBox_AzureLocation.SelectedItem) -and ($WPFComboBox_AzureImage.SelectedItem) -and ($WPFComboBox_AzureVMSize.SelectedItem)) { $WPFButton_Next.IsEnabled = $True } 
        (Get-AzVMSize -Location $($WPFComboBox_AzureLocation.SelectedItem)).Name | ForEach-Object { $WPFComboBox_AzureVMSize.Items.Add($_) } | Out-Null
    })

$WPFComboBox_AzureImage.Add_SelectionChanged( {
        If (($WPFComboBox_AzureRG.SelectedItem) -and ($WPFComboBox_AzureLocation.SelectedItem) -and ($WPFComboBox_AzureImage.SelectedItem) -and ($WPFComboBox_AzureVMSize.SelectedItem)) { $WPFButton_Next.IsEnabled = $True }    
    })

$WPFComboBox_AzureVMSize.Add_SelectionChanged( {
        If (($WPFComboBox_AzureRG.SelectedItem) -and ($WPFComboBox_AzureLocation.SelectedItem) -and ($WPFComboBox_AzureImage.SelectedItem) -and ($WPFComboBox_AzureVMSize.SelectedItem)) { $WPFButton_Next.IsEnabled = $True }    
    })

$WPFComboBox_AzureEnvironment.Add_SelectionChanged( {
        $WPFButton_AzureSignin.IsEnabled = $true
    })

# Next Button Action
$WPFButton_Next.Add_Click({
        If($WPFTabControl_Main.SelectedIndex -eq 3){$WPFButton_Next.IsEnabled=$False;$WPFTabControl_Main.SelectedIndex++;$WPFButton_Finish.IsEnabled = $True;$WPFButton_Finish.Focus()}Else
        {$WPFTabControl_Main.SelectedIndex++;$WPFButton_Back.IsEnabled = $True}
        If($WPFTabControl_Main.SelectedIndex -eq 4){Update-Summary}
})
# Back Button Action
$WPFButton_Back.Add_Click({
    If($WPFTabControl_Main.SelectedIndex -gt 0)
    {
        $WPFButton_Next.IsEnabled=$True
        $WPFTabControl_Main.SelectedIndex--
    }
    else {
        $WPFButton_Back.IsEnabled = $False
    }
})
# Finish Button Action
$WPFButton_Finish.Add_Click({$UIWindow.Close()
    global:Write-LogEntry -Value "Info: Attempting to Set TS Variables" -Severity 1 -SkipGuiLog $true
Try{
    If ($(($WPFComboBox_NetworkDomain).SelectedItem) -eq "Workgroup")
    {
        Add-Content -Path $AzureScriptFile -Value "OSDNetworkJoinType" = "1"
        Add-Content -Path $AzureScriptFile -Value "OSDWorkgroupName" = "$($WPFComboBox_NetworkDomain.SelectedItem)"
        Add-Content -Path $AzureScriptFile -Value "OSDDomainName" = ""
        Add-Content -Path $AzureScriptFile -Value "OSDDomainOUName" = ""
        Add-Content -Path $AzureScriptFile -Value "OSDJoinAccount" = ""
        Add-Content -Path $AzureScriptFile -Value "OSDJoinPassword" = ""
    }
    Else
    {
        Add-Content -Path $AzureScriptFile -Value 'OSDNetworkJoinType=0'
        Add-Content -Path $AzureScriptFile -Value "OSDDomainName=$($WPFComboBox_NetworkDomain.SelectedItem)"
        If ($($global:WPFComboBox_NetworkOUPath) -like '*Container*') {Add-Content -Path $AzureScriptFile -Value 'OSDDomainOUName=""' }Else{
        Add-Content -Path $AzureScriptFile -Value "OSDDomainOUName=$($global:WPFComboBox_NetworkOUPath) "}
        }
    Add-Content -Path $AzureScriptFile -Value "OSDComputerName=$($WPFTextBox_GeneralComputerName.Text)"
    Add-Content -Path $AzureScriptFile -Value "OSDComputerDescription=$($WPFTextBox_GeneralComputerDescription.Text)"
    Add-Content -Path $AzureScriptFile -Value "OSDMigrateTimeZone=$True"
    Add-Content -Path $AzureScriptFile -Value "OSDTimeZone=$($global:WPFGeneralTimeZone)"
    Add-Content -Path $AzureScriptFile -Value "OSDRoleChoice=$(($WPFListBox_Role).SelectedItem.Content)"
    Add-Content -Path $AzureScriptFile -Value "OSDAzureLocation=$($WPFComboBox_AzureLocation.SelectedItem)"
    Add-Content -Path $AzureScriptFile -Value "OSDAzureRG=$($WPFComboBox_AzureRG.SelectedItem)"
    Add-Content -Path $AzureScriptFile -Value "OSDAzureImage=$($WPFComboBox_AzureImage.SelectedItem)"
    Add-Content -Path $AzureScriptFile -Value "OSDAzureVMSize=$($WPFComboBox_AzureVMSize.SelectedItem)"
    global:Write-LogEntry -Value "Info: Succesfully Set TS Variables" -Severity 1 -SkipGuiLog $true
    global:Write-LogEntry -Value "Info: Attempting to Create VM" -Severity 1 -SkipGuiLog $true
    CreateAzureVM
}
Catch{global:Write-LogEntry -Value "Error: Failed to Set TS Variables:$error" -Severity 3 -SkipGuiLog $true}
})

# Tab Control Event Action 
$WPFTabControl_Main.Add_SelectionChanged({
    If($WPFTabControl_Main.SelectedIndex -eq 1){
        If($WPFListBox_Network.SelectedItem.Content -eq 'Workgroup'){$WPFButton_Next.IsEnabled = $True}
        ElseIf($WPFListBox_Network.SelectedItem.Content -eq 'Domain' -and $WPFComboBox_NetworkOU.SelectedItem){$WPFButton_Next.IsEnabled = $True}
        Else{$WPFButton_Next.IsEnabled = $False}
    }
})

# Populate Timezone ComboBox
$TimeZones.DisplayName | ForEach-Object { $WPFComboBox_GeneralTimeZone.Items.Add($_)} | Out-Null
# Populate Airport Code Combobox
Get-Content $ScriptPath\AirportCodes.ini | ForEach-Object { $WPFComboBox_GeneralSiteCode.Items.Add($_)} | Out-Null
# Populate Domains Combobox
Get-Content $ScriptPath\Domains.ini | ForEach-Object { $WPFComboBox_NetworkDomain.Items.Add($_)} | Out-Null
# Populate Azure Environment Combobox
Get-Content $ScriptPath\AzEnv.ini | ForEach-Object { $WPFComboBox_AzureEnvironment.Items.Add($_) } | Out-Null
# Populate Azure Images Combobox
Get-Content $ScriptPath\AzImages.ini | ForEach-Object { $WPFComboBox_AzureImage.Items.Add($_) } | Out-Null

#===========================================================================
# Shows the form
#===========================================================================
$UIWindow.ShowDialog() | out-null
