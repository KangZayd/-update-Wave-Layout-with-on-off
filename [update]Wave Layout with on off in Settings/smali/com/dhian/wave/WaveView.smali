.class public Lcom/dhian/wave/WaveView;
.super Landroid/view/View;
.source "WaveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dhian/wave/WaveView$ShapeType;
    }
.end annotation


# static fields
.field private static final DEFAULT_AMPLITUDE_RATIO:F = 0.05f

.field private static final DEFAULT_WATER_LEVEL_RATIO:F = 0.5f

.field private static final DEFAULT_WAVE_LENGTH_RATIO:F = 1.0f

.field public static final DEFAULT_WAVE_SHAPE:Lcom/dhian/wave/WaveView$ShapeType;

.field private static final DEFAULT_WAVE_SHIFT_RATIO:F

.field private static level:F


# instance fields
.field private mAmplitudeRatio:F

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBehindWaveColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mDefaultAmplitude:F

.field private mDefaultAngularFrequency:D

.field private mDefaultWaterLevel:F

.field private mDefaultWaveLength:F

.field private mFrontWaveColor:I

.field private mHandler:Landroid/os/Handler;

.field private mShaderMatrix:Landroid/graphics/Matrix;

.field private mShapeType:Lcom/dhian/wave/WaveView$ShapeType;

.field private mShowWave:Z

.field private mTicker:Ljava/lang/Runnable;

.field private mViewPaint:Landroid/graphics/Paint;

.field private mWaterLevelRatio:F

.field private mWaveLengthRatio:F

.field private mWaveShader:Landroid/graphics/BitmapShader;

.field private mWaveShiftRatio:F

.field private start:Z

.field private warna:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/dhian/wave/WaveView$ShapeType;->SQUARE:Lcom/dhian/wave/WaveView$ShapeType;

    sput-object v0, Lcom/dhian/wave/WaveView;->DEFAULT_WAVE_SHAPE:Lcom/dhian/wave/WaveView$ShapeType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/dhian/wave/WaveView;->mAmplitudeRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/dhian/wave/WaveView;->mWaveLengthRatio:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/dhian/wave/WaveView;->mWaterLevelRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/dhian/wave/WaveView;->mWaveShiftRatio:F

    sget-object v0, Lcom/dhian/wave/WaveView;->DEFAULT_WAVE_SHAPE:Lcom/dhian/wave/WaveView$ShapeType;

    iput-object v0, p0, Lcom/dhian/wave/WaveView;->mShapeType:Lcom/dhian/wave/WaveView$ShapeType;

    invoke-direct {p0}, Lcom/dhian/wave/WaveView;->changeSettings()V

    invoke-direct {p0}, Lcom/dhian/wave/WaveView;->init()V

    invoke-direct {p0}, Lcom/dhian/wave/WaveView;->initAnimation()V

    return-void
.end method

.method static synthetic access$000(Lcom/dhian/wave/WaveView;)I
    .locals 1

    iget v0, p0, Lcom/dhian/wave/WaveView;->warna:I

    return v0
.end method

.method static synthetic access$002(Lcom/dhian/wave/WaveView;I)I
    .locals 0

    iput p1, p0, Lcom/dhian/wave/WaveView;->warna:I

    return p1
.end method

.method static synthetic access$102(Lcom/dhian/wave/WaveView;I)I
    .locals 0

    iput p1, p0, Lcom/dhian/wave/WaveView;->mFrontWaveColor:I

    return p1
.end method

.method static synthetic access$202(Lcom/dhian/wave/WaveView;I)I
    .locals 0

    iput p1, p0, Lcom/dhian/wave/WaveView;->mBehindWaveColor:I

    return p1
.end method

.method static synthetic access$302(F)F
    .locals 0

    sput p0, Lcom/dhian/wave/WaveView;->level:F

    return p0
.end method

.method static synthetic access$400(Lcom/dhian/wave/WaveView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dhian/wave/WaveView;->start:Z

    return v0
.end method

.method static synthetic access$402(Lcom/dhian/wave/WaveView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dhian/wave/WaveView;->start:Z

    return p1
.end method

.method static synthetic access$500(Lcom/dhian/wave/WaveView;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/dhian/wave/WaveView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dhian/wave/WaveView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/dhian/wave/WaveView;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dhian/wave/WaveView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/dhian/wave/WaveView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private changeSettings()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dhian/wave/WaveView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/dhian/wave/WaveView$1;

    invoke-direct {v0, p0}, Lcom/dhian/wave/WaveView$1;-><init>(Lcom/dhian/wave/WaveView;)V

    iput-object v0, p0, Lcom/dhian/wave/WaveView;->mTicker:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/dhian/wave/WaveView;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private createShader()V
    .locals 22

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    invoke-virtual/range {p0 .. p0}, Lcom/dhian/wave/WaveView;->getWidth()I

    move-result v3

    int-to-double v10, v3

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/dhian/wave/WaveView;->mDefaultAngularFrequency:D

    invoke-virtual/range {p0 .. p0}, Lcom/dhian/wave/WaveView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dhian/wave/WaveView;->mDefaultAmplitude:F

    invoke-virtual/range {p0 .. p0}, Lcom/dhian/wave/WaveView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dhian/wave/WaveView;->mDefaultWaterLevel:F

    invoke-virtual/range {p0 .. p0}, Lcom/dhian/wave/WaveView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dhian/wave/WaveView;->mDefaultWaveLength:F

    invoke-virtual/range {p0 .. p0}, Lcom/dhian/wave/WaveView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/dhian/wave/WaveView;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/dhian/wave/WaveView;->getWidth()I

    move-result v3

    add-int/lit8 v16, v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/dhian/wave/WaveView;->getHeight()I

    move-result v3

    add-int/lit8 v17, v3, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dhian/wave/WaveView;->mBehindWaveColor:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_0

    int-to-double v8, v14

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/dhian/wave/WaveView;->mDefaultAngularFrequency:D

    mul-double v20, v8, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dhian/wave/WaveView;->mDefaultWaterLevel:F

    float-to-double v8, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dhian/wave/WaveView;->mDefaultAmplitude:F

    float-to-double v10, v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v4, v8

    int-to-float v3, v14

    int-to-float v5, v14

    move/from16 v0, v17

    int-to-float v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    aput v4, v19, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dhian/wave/WaveView;->mFrontWaveColor:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dhian/wave/WaveView;->mDefaultWaveLength:F

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v18, v0

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_1

    int-to-float v9, v14

    add-int v3, v14, v18

    rem-int v3, v3, v16

    aget v10, v19, v3

    int-to-float v11, v14

    move/from16 v0, v17

    int-to-float v12, v0

    move-object v8, v2

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v15, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/dhian/wave/WaveView;->mWaveShader:Landroid/graphics/BitmapShader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dhian/wave/WaveView;->mViewPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dhian/wave/WaveView;->mWaveShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/dhian/wave/WaveView;->mShaderMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dhian/wave/WaveView;->mViewPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/dhian/wave/WaveView;->mViewPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private initAnimation()V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "waveShiftRatio"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "waterLevelRatio"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0xfa0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "amplitudeRatio"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/dhian/wave/WaveView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/dhian/wave/WaveView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x38d1b717    # 1.0E-4f
        0x3d4ccccd    # 0.05f
    .end array-data
.end method


# virtual methods
.method public adjustAlpha(IF)I
    .locals 5

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method public getAmplitudeRatio()F
    .locals 1

    iget v0, p0, Lcom/dhian/wave/WaveView;->mAmplitudeRatio:F

    return v0
.end method

.method public getWaterLevelRatio()F
    .locals 1

    iget v0, p0, Lcom/dhian/wave/WaveView;->mWaterLevelRatio:F

    return v0
.end method

.method public getWaveLengthRatio()F
    .locals 1

    iget v0, p0, Lcom/dhian/wave/WaveView;->mWaveLengthRatio:F

    return v0
.end method

.method public getWaveShiftRatio()F
    .locals 1

    iget v0, p0, Lcom/dhian/wave/WaveView;->mWaveShiftRatio:F

    return v0
.end method

.method public isShowWave()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dhian/wave/WaveView;->mShowWave:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/dhian/wave/WaveView;->mShowWave:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dhian/wave/WaveView;->mWaveShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dhian/wave/WaveView;->mViewPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dhian/wave/WaveView;->mViewPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/dhian/wave/WaveView;->mWaveShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    iget-object v0, p0, Lcom/dhian/wave/WaveView;->mShaderMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/dhian/wave/WaveView;->mWaveLengthRatio:F

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/dhian/wave/WaveView;->mAmplitudeRatio:F

    const v4, 0x3d4ccccd    # 0.05f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/dhian/wave/WaveView;->mDefaultWaterLevel:F

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v0, p0, Lcom/dhian/wave/WaveView;->mShaderMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/dhian/wave/WaveView;->mWaveShiftRatio:F

    invoke-virtual {p0}, Lcom/dhian/wave/WaveView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sget v3, Lcom/dhian/wave/WaveView;->level:F

    iget v4, p0, Lcom/dhian/wave/WaveView;->mWaterLevelRatio:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/dhian/wave/WaveView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/dhian/wave/WaveView;->mWaveShader:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/dhian/wave/WaveView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/dhian/wave/WaveView;->mBorderPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    :goto_0
    sget-object v0, Lcom/dhian/wave/WaveView$2;->$SwitchMap$com$dhian$wave$WaveView$ShapeType:[I

    iget-object v2, p0, Lcom/dhian/wave/WaveView;->mShapeType:Lcom/dhian/wave/WaveView$ShapeType;

    invoke-virtual {v2}, Lcom/dhian/wave/WaveView$ShapeType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dhian/wave/WaveView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/dhian/wave/WaveView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v0, v1

    invoke-virtual {p0}, Lcom/dhian/wave/WaveView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v4, v0, v1

    iget-object v5, p0, Lcom/dhian/wave/WaveView;->mViewPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/dhian/wave/WaveView;->mViewPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/dhian/wave/WaveView;->createShader()V

    return-void
.end method

.method public setAmplitudeRatio(F)V
    .locals 1

    iget v0, p0, Lcom/dhian/wave/WaveView;->mAmplitudeRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/dhian/wave/WaveView;->mAmplitudeRatio:F

    invoke-virtual {p0}, Lcom/dhian/wave/WaveView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setShapeType(Lcom/dhian/wave/WaveView$ShapeType;)V
    .locals 0

    iput-object p1, p0, Lcom/dhian/wave/WaveView;->mShapeType:Lcom/dhian/wave/WaveView$ShapeType;

    invoke-virtual {p0}, Lcom/dhian/wave/WaveView;->invalidate()V

    return-void
.end method

.method public setShowWave(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dhian/wave/WaveView;->mShowWave:Z

    return-void
.end method

.method public setWaterLevelRatio(F)V
    .locals 1

    iget v0, p0, Lcom/dhian/wave/WaveView;->mWaterLevelRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/dhian/wave/WaveView;->mWaterLevelRatio:F

    invoke-virtual {p0}, Lcom/dhian/wave/WaveView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setWaveColor(II)V
    .locals 1

    iput p1, p0, Lcom/dhian/wave/WaveView;->mBehindWaveColor:I

    iput p2, p0, Lcom/dhian/wave/WaveView;->mFrontWaveColor:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dhian/wave/WaveView;->mWaveShader:Landroid/graphics/BitmapShader;

    invoke-direct {p0}, Lcom/dhian/wave/WaveView;->createShader()V

    invoke-virtual {p0}, Lcom/dhian/wave/WaveView;->invalidate()V

    return-void
.end method

.method public setWaveLengthRatio(F)V
    .locals 0

    iput p1, p0, Lcom/dhian/wave/WaveView;->mWaveLengthRatio:F

    return-void
.end method

.method public setWaveShiftRatio(F)V
    .locals 1

    iget v0, p0, Lcom/dhian/wave/WaveView;->mWaveShiftRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/dhian/wave/WaveView;->mWaveShiftRatio:F

    invoke-virtual {p0}, Lcom/dhian/wave/WaveView;->invalidate()V

    :cond_0
    return-void
.end method
