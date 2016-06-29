.class synthetic Lcom/dhian/wave/WaveView$2;
.super Ljava/lang/Object;
.source "WaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dhian/wave/WaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$dhian$wave$WaveView$ShapeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/dhian/wave/WaveView$ShapeType;->values()[Lcom/dhian/wave/WaveView$ShapeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dhian/wave/WaveView$2;->$SwitchMap$com$dhian$wave$WaveView$ShapeType:[I

    :try_start_0
    sget-object v0, Lcom/dhian/wave/WaveView$2;->$SwitchMap$com$dhian$wave$WaveView$ShapeType:[I

    sget-object v1, Lcom/dhian/wave/WaveView$ShapeType;->SQUARE:Lcom/dhian/wave/WaveView$ShapeType;

    invoke-virtual {v1}, Lcom/dhian/wave/WaveView$ShapeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
