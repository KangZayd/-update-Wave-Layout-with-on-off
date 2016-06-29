.class Lcom/dhian/wave/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dhian/wave/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dhian/wave/Settings;


# direct methods
.method constructor <init>(Lcom/dhian/wave/Settings;)V
    .locals 0

    iput-object p1, p0, Lcom/dhian/wave/Settings$1;->this$0:Lcom/dhian/wave/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/dhian/wave/Settings$1;->this$0:Lcom/dhian/wave/Settings;

    # getter for: Lcom/dhian/wave/Settings;->wv:Lcom/dhian/wave/WaveView;
    invoke-static {v1}, Lcom/dhian/wave/Settings;->access$000(Lcom/dhian/wave/Settings;)Lcom/dhian/wave/WaveView;

    move-result-object v1

    iget-object v2, p0, Lcom/dhian/wave/Settings$1;->this$0:Lcom/dhian/wave/Settings;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v0, v3}, Lcom/dhian/wave/Settings;->adjustAlpha(IF)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/dhian/wave/WaveView;->setWaveColor(II)V

    const/4 v1, 0x1

    return v1
.end method
