.class public Lcom/dhian/colorpicker/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dhian/colorpicker/ColorPickerView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dhian/colorpicker/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private alert:Landroid/app/AlertDialog;

.field private mColorPicker:Lcom/dhian/colorpicker/ColorPickerView;

.field private mHexDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mHexVal:Landroid/widget/EditText;

.field private mHexValueEnabled:Z

.field private mListener:Lcom/dhian/colorpicker/ColorPickerDialog$OnColorChangedListener;

.field private mNewColor:Lcom/dhian/colorpicker/ColorPickerPanelView;

.field private mOldColor:Lcom/dhian/colorpicker/ColorPickerPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    invoke-direct {p0, p2}, Lcom/dhian/colorpicker/ColorPickerDialog;->init(I)V

    const-string v0, "Pilih Warna"

    invoke-virtual {p0, v0}, Lcom/dhian/colorpicker/ColorPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/dhian/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dhian/colorpicker/ColorPickerDialog;)Lcom/dhian/colorpicker/ColorPickerView;
    .locals 1

    iget-object v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/dhian/colorpicker/ColorPickerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dhian/colorpicker/ColorPickerDialog;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private init(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/dhian/colorpicker/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-direct {p0, p1}, Lcom/dhian/colorpicker/ColorPickerDialog;->setUp(I)V

    return-void
.end method

.method private setUp(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/dhian/colorpicker/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const-string v2, "imot_dialog_color_picker"

    const-string v3, "layout"

    invoke-virtual {p0, v2, v3}, Lcom/dhian/colorpicker/ColorPickerDialog;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dhian/colorpicker/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v6}, Lcom/dhian/colorpicker/ColorPickerDialog;->setCancelable(Z)V

    const-string v2, "Pick Color Background"

    invoke-virtual {p0, v2}, Lcom/dhian/colorpicker/ColorPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v2, "color_picker_view"

    const-string v3, "id"

    invoke-virtual {p0, v2, v3}, Lcom/dhian/colorpicker/ColorPickerDialog;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dhian/colorpicker/ColorPickerView;

    iput-object v2, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/dhian/colorpicker/ColorPickerView;

    const-string v2, "old_color_panel"

    const-string v3, "id"

    invoke-virtual {p0, v2, v3}, Lcom/dhian/colorpicker/ColorPickerDialog;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dhian/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mOldColor:Lcom/dhian/colorpicker/ColorPickerPanelView;

    const-string v2, "new_color_panel"

    const-string v3, "id"

    invoke-virtual {p0, v2, v3}, Lcom/dhian/colorpicker/ColorPickerDialog;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dhian/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mNewColor:Lcom/dhian/colorpicker/ColorPickerPanelView;

    const-string v2, "hex_val"

    const-string v3, "id"

    invoke-virtual {p0, v2, v3}, Lcom/dhian/colorpicker/ColorPickerDialog;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-instance v3, Lcom/dhian/colorpicker/ColorPickerDialog$1;

    invoke-direct {v3, p0}, Lcom/dhian/colorpicker/ColorPickerDialog$1;-><init>(Lcom/dhian/colorpicker/ColorPickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v2, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mOldColor:Lcom/dhian/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2}, Lcom/dhian/colorpicker/ColorPickerPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/dhian/colorpicker/ColorPickerView;

    invoke-virtual {v3}, Lcom/dhian/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/dhian/colorpicker/ColorPickerView;

    invoke-virtual {v4}, Lcom/dhian/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mOldColor:Lcom/dhian/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p0}, Lcom/dhian/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mNewColor:Lcom/dhian/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p0}, Lcom/dhian/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/dhian/colorpicker/ColorPickerView;

    invoke-virtual {v2, p0}, Lcom/dhian/colorpicker/ColorPickerView;->setOnColorChangedListener(Lcom/dhian/colorpicker/ColorPickerView$OnColorChangedListener;)V

    iget-object v2, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mOldColor:Lcom/dhian/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p1}, Lcom/dhian/colorpicker/ColorPickerPanelView;->setColor(I)V

    iget-object v2, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/dhian/colorpicker/ColorPickerView;

    invoke-virtual {v2, p1, v6}, Lcom/dhian/colorpicker/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method private updateHexLengthFilter()V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/dhian/colorpicker/ColorPickerDialog;->getAlphaSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private updateHexValue(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/dhian/colorpicker/ColorPickerDialog;->getAlphaSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/dhian/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/dhian/colorpicker/ColorPickerPreference;->convertToRGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getAlphaSliderVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/dhian/colorpicker/ColorPickerView;

    invoke-virtual {v0}, Lcom/dhian/colorpicker/ColorPickerView;->getAlphaSliderVisible()Z

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/dhian/colorpicker/ColorPickerView;

    invoke-virtual {v0}, Lcom/dhian/colorpicker/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public getHexValueEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    return v0
.end method

.method public getID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcom/dhian/colorpicker/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dhian/colorpicker/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "new_color_panel"

    const-string v2, "id"

    invoke-virtual {p0, v1, v2}, Lcom/dhian/colorpicker/ColorPickerDialog;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mListener:Lcom/dhian/colorpicker/ColorPickerDialog$OnColorChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mListener:Lcom/dhian/colorpicker/ColorPickerDialog$OnColorChangedListener;

    iget-object v1, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mNewColor:Lcom/dhian/colorpicker/ColorPickerPanelView;

    invoke-virtual {v1}, Lcom/dhian/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/dhian/colorpicker/ColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/dhian/colorpicker/ColorPickerDialog;->dismiss()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mNewColor:Lcom/dhian/colorpicker/ColorPickerPanelView;

    invoke-virtual {v0, p1}, Lcom/dhian/colorpicker/ColorPickerPanelView;->setColor(I)V

    iget-boolean v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/dhian/colorpicker/ColorPickerDialog;->updateHexValue(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mOldColor:Lcom/dhian/colorpicker/ColorPickerPanelView;

    const-string v1, "old_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dhian/colorpicker/ColorPickerPanelView;->setColor(I)V

    iget-object v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/dhian/colorpicker/ColorPickerView;

    const-string v1, "new_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/dhian/colorpicker/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "old_color"

    iget-object v2, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mOldColor:Lcom/dhian/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2}, Lcom/dhian/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "new_color"

    iget-object v2, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mNewColor:Lcom/dhian/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2}, Lcom/dhian/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/dhian/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/dhian/colorpicker/ColorPickerView;->setAlphaSliderVisible(Z)V

    iget-boolean v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/dhian/colorpicker/ColorPickerDialog;->updateHexLengthFilter()V

    invoke-virtual {p0}, Lcom/dhian/colorpicker/ColorPickerDialog;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dhian/colorpicker/ColorPickerDialog;->updateHexValue(I)V

    :cond_0
    return-void
.end method

.method public setHexValueEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-direct {p0}, Lcom/dhian/colorpicker/ColorPickerDialog;->updateHexLengthFilter()V

    invoke-virtual {p0}, Lcom/dhian/colorpicker/ColorPickerDialog;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dhian/colorpicker/ColorPickerDialog;->updateHexValue(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnColorChangedListener(Lcom/dhian/colorpicker/ColorPickerDialog$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/dhian/colorpicker/ColorPickerDialog;->mListener:Lcom/dhian/colorpicker/ColorPickerDialog$OnColorChangedListener;

    return-void
.end method
