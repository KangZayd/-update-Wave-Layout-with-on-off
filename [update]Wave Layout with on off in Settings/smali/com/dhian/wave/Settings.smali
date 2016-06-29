.class public Lcom/dhian/wave/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"


# instance fields
.field private a:Lcom/dhian/colorpicker/ColorPickerPreference;

.field private wv:Lcom/dhian/wave/WaveView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static Restart()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/dhian/wave/Settings;)Lcom/dhian/wave/WaveView;
    .locals 1
    .param p0, "x0"    # Lcom/dhian/wave/Settings;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/dhian/wave/Settings;->wv:Lcom/dhian/wave/WaveView;

    return-object v0
.end method

.method private restartWithConfirm()V
    .locals 4

    .prologue
    .line 46
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Dibutuhkan restart untuk menerapkan semua ini!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Kang Zayd"

    .line 48
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/dhian/wave/Settings$3;

    invoke-direct {v3, p0}, Lcom/dhian/wave/Settings$3;-><init>(Lcom/dhian/wave/Settings;)V

    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Tidak, terima kasih"

    new-instance v3, Lcom/dhian/wave/Settings$2;

    invoke-direct {v3, p0}, Lcom/dhian/wave/Settings$2;-><init>(Lcom/dhian/wave/Settings;)V

    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 61
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 62
    return-void
.end method


# virtual methods
.method public adjustAlpha(IF)I
    .locals 5
    .param p1, "color"    # I
    .param p2, "factor"    # F

    .prologue
    .line 38
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 39
    .local v0, "alpha":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 40
    .local v3, "red":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 41
    .local v2, "green":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 42
    .local v1, "blue":I
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/dhian/wave/Settings;->restartWithConfirm()V

    .line 73
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcom/dhian/wave/Settings;->addPreferencesFromResource(I)V

    .line 24
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/dhian/wave/Settings;->setContentView(I)V

    .line 26
    const v0, 0x7f0c0090

    invoke-virtual {p0, v0}, Lcom/dhian/wave/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dhian/wave/WaveView;

    iput-object v0, p0, Lcom/dhian/wave/Settings;->wv:Lcom/dhian/wave/WaveView;

    .line 27
    const-string v0, "wave_color"

    invoke-virtual {p0, v0}, Lcom/dhian/wave/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/dhian/colorpicker/ColorPickerPreference;

    iput-object v0, p0, Lcom/dhian/wave/Settings;->a:Lcom/dhian/colorpicker/ColorPickerPreference;

    .line 28
    iget-object v0, p0, Lcom/dhian/wave/Settings;->a:Lcom/dhian/colorpicker/ColorPickerPreference;

    new-instance v1, Lcom/dhian/wave/Settings$1;

    invoke-direct {v1, p0}, Lcom/dhian/wave/Settings$1;-><init>(Lcom/dhian/wave/Settings;)V

    invoke-virtual {v0, v1}, Lcom/dhian/colorpicker/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 36
    return-void
.end method
