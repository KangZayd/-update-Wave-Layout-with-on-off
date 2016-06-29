.class Lcom/dhian/wave/WaveView$1;
.super Ljava/lang/Object;
.source "WaveView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dhian/wave/WaveView;->changeSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dhian/wave/WaveView;


# direct methods
.method constructor <init>(Lcom/dhian/wave/WaveView;)V
    .locals 0

    iput-object p1, p0, Lcom/dhian/wave/WaveView$1;->this$0:Lcom/dhian/wave/WaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-wide/16 v12, 0x3e8

    const/4 v10, 0x1

    iget-object v6, p0, Lcom/dhian/wave/WaveView$1;->this$0:Lcom/dhian/wave/WaveView;

    invoke-virtual {v6}, Lcom/dhian/wave/WaveView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v6, p0, Lcom/dhian/wave/WaveView$1;->this$0:Lcom/dhian/wave/WaveView;

    const-string v7, "wave_color"

    const v8, 0x543ae6f5

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    # setter for: Lcom/dhian/wave/WaveView;->warna:I
    invoke-static {v6, v7}, Lcom/dhian/wave/WaveView;->access$002(Lcom/dhian/wave/WaveView;I)I

    iget-object v6, p0, Lcom/dhian/wave/WaveView$1;->this$0:Lcom/dhian/wave/WaveView;

    iget-object v7, p0, Lcom/dhian/wave/WaveView$1;->this$0:Lcom/dhian/wave/WaveView;

    # getter for: Lcom/dhian/wave/WaveView;->warna:I
    invoke-static {v7}, Lcom/dhian/wave/WaveView;->access$000(Lcom/dhian/wave/WaveView;)I

    move-result v7

    # setter for: Lcom/dhian/wave/WaveView;->mFrontWaveColor:I
    invoke-static {v6, v7}, Lcom/dhian/wave/WaveView;->access$102(Lcom/dhian/wave/WaveView;I)I

    iget-object v6, p0, Lcom/dhian/wave/WaveView$1;->this$0:Lcom/dhian/wave/WaveView;

    iget-object v7, p0, Lcom/dhian/wave/WaveView$1;->this$0:Lcom/dhian/wave/WaveView;

    iget-object v8, p0, Lcom/dhian/wave/WaveView$1;->this$0:Lcom/dhian/wave/WaveView;

    # getter for: Lcom/dhian/wave/WaveView;->warna:I
    invoke-static {v8}, Lcom/dhian/wave/WaveView;->access$000(Lcom/dhian/wave/WaveView;)I

    move-result v8

    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8, v9}, Lcom/dhian/wave/WaveView;->adjustAlpha(IF)I

    move-result v7

    # setter for: Lcom/dhian/wave/WaveView;->mBehindWaveColor:I
    invoke-static {v6, v7}, Lcom/dhian/wave/WaveView;->access$202(Lcom/dhian/wave/WaveView;I)I

    const-string v6, "wave_level"

    const/16 v7, 0x1e

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    rsub-int/lit8 v0, v6, 0x64

    int-to-float v6, v0

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    # setter for: Lcom/dhian/wave/WaveView;->level:F
    invoke-static {v6}, Lcom/dhian/wave/WaveView;->access$302(F)F

    iget-object v6, p0, Lcom/dhian/wave/WaveView$1;->this$0:Lcom/dhian/wave/WaveView;

    const-string v7, "wave_start"

    invoke-interface {v1, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    # setter for: Lcom/dhian/wave/WaveView;->start:Z
    invoke-static {v6, v7}, Lcom/dhian/wave/WaveView;->access$402(Lcom/dhian/wave/WaveView;Z)Z

    iget-object v6, p0, Lcom/dhian/wave/WaveView$1;->this$0:Lcom/dhian/wave/WaveView;

    # getter for: Lcom/dhian/wave/WaveView;->start:Z
    invoke-static {v6}, Lcom/dhian/wave/WaveView;->access$400(Lcom/dhian/wave/WaveView;)Z

    move-result v6

    if-ne v6, v10, :cond_1

    iget-object v6, p0, Lcom/dhian/wave/WaveView$1;->this$0:Lcom/dhian/wave/WaveView;

    invoke-virtual {v6, v10}, Lcom/dhian/wave/WaveView;->setShowWave(Z)V

    iget-object v6, p0, Lcom/dhian/wave/WaveView$1;->this$0:Lcom/dhian/wave/WaveView;

    # getter for: Lcom/dhian/wave/WaveView;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v6}, Lcom/dhian/wave/WaveView;->access$500(Lcom/dhian/wave/WaveView;)Landroid/animation/AnimatorSet;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/dhian/wave/WaveView$1;->this$0:Lcom/dhian/wave/WaveView;

    # getter for: Lcom/dhian/wave/WaveView;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v6}, Lcom/dhian/wave/WaveView;->access$500(Lcom/dhian/wave/WaveView;)Landroid/animation/AnimatorSet;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/dhian/wave/WaveView$1;->this$0:Lcom/dhian/wave/WaveView;

    invoke-virtual {v6}, Lcom/dhian/wave/WaveView;->invalidate()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    rem-long v6, v4, v12

    sub-long v6, v12, v6

    add-long v2, v4, v6

    iget-object v6, p0, Lcom/dhian/wave/WaveView$1;->this$0:Lcom/dhian/wave/WaveView;

    # getter for: Lcom/dhian/wave/WaveView;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/dhian/wave/WaveView;->access$700(Lcom/dhian/wave/WaveView;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/dhian/wave/WaveView$1;->this$0:Lcom/dhian/wave/WaveView;

    # getter for: Lcom/dhian/wave/WaveView;->mTicker:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/dhian/wave/WaveView;->access$600(Lcom/dhian/wave/WaveView;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v6, p0, Lcom/dhian/wave/WaveView$1;->this$0:Lcom/dhian/wave/WaveView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/dhian/wave/WaveView;->setShowWave(Z)V

    goto :goto_0
.end method
