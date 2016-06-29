.class public final enum Lcom/dhian/wave/WaveView$ShapeType;
.super Ljava/lang/Enum;
.source "WaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dhian/wave/WaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShapeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dhian/wave/WaveView$ShapeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dhian/wave/WaveView$ShapeType;

.field public static final enum SQUARE:Lcom/dhian/wave/WaveView$ShapeType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/dhian/wave/WaveView$ShapeType;

    const-string v1, "SQUARE"

    invoke-direct {v0, v1, v2}, Lcom/dhian/wave/WaveView$ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dhian/wave/WaveView$ShapeType;->SQUARE:Lcom/dhian/wave/WaveView$ShapeType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/dhian/wave/WaveView$ShapeType;

    sget-object v1, Lcom/dhian/wave/WaveView$ShapeType;->SQUARE:Lcom/dhian/wave/WaveView$ShapeType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/dhian/wave/WaveView$ShapeType;->$VALUES:[Lcom/dhian/wave/WaveView$ShapeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dhian/wave/WaveView$ShapeType;
    .locals 1

    const-class v0, Lcom/dhian/wave/WaveView$ShapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dhian/wave/WaveView$ShapeType;

    return-object v0
.end method

.method public static values()[Lcom/dhian/wave/WaveView$ShapeType;
    .locals 1

    sget-object v0, Lcom/dhian/wave/WaveView$ShapeType;->$VALUES:[Lcom/dhian/wave/WaveView$ShapeType;

    invoke-virtual {v0}, [Lcom/dhian/wave/WaveView$ShapeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dhian/wave/WaveView$ShapeType;

    return-object v0
.end method
