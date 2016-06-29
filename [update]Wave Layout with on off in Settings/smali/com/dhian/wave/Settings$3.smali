.class Lcom/dhian/wave/Settings$3;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dhian/wave/Settings;->restartWithConfirm()V
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

    iput-object p1, p0, Lcom/dhian/wave/Settings$3;->this$0:Lcom/dhian/wave/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/dhian/wave/Settings;->Restart()V

    return-void
.end method
