.class public Lcom/dhian/ListApplicationAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ListApplicationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;,
        Lcom/dhian/ListApplicationAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private appsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private listener:Lcom/dhian/ListApplicationAdapter$OnItemClickListener;

.field private packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dhian/ListApplicationAdapter;->appsList:Ljava/util/List;

    iput-object p1, p0, Lcom/dhian/ListApplicationAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dhian/ListApplicationAdapter;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/dhian/ListApplicationAdapter$OnItemClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Lcom/dhian/ListApplicationAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dhian/ListApplicationAdapter;->appsList:Ljava/util/List;

    iput-object p1, p0, Lcom/dhian/ListApplicationAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dhian/ListApplicationAdapter;->packageManager:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/dhian/ListApplicationAdapter;->appsList:Ljava/util/List;

    iput-object p3, p0, Lcom/dhian/ListApplicationAdapter;->listener:Lcom/dhian/ListApplicationAdapter$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public getItem(I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/dhian/ListApplicationAdapter;->appsList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dhian/ListApplicationAdapter;->appsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/dhian/ListApplicationAdapter;->appsList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dhian/ListApplicationAdapter;->appsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/dhian/ListApplicationAdapter;->onBindViewHolder(Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;I)V
    .locals 3

    iget-object v1, p0, Lcom/dhian/ListApplicationAdapter;->appsList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/dhian/ListApplicationAdapter;->listener:Lcom/dhian/ListApplicationAdapter$OnItemClickListener;

    invoke-virtual {p1, v1, v2, p2}, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;->bind(Landroid/content/pm/ApplicationInfo;Lcom/dhian/ListApplicationAdapter$OnItemClickListener;I)V

    iget-object v1, p0, Lcom/dhian/ListApplicationAdapter;->appsList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dhian/ListApplicationAdapter;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;->subTitle:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;->iconApp:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dhian/ListApplicationAdapter;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/dhian/ListApplicationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030030

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;-><init>(Lcom/dhian/ListApplicationAdapter;Landroid/view/View;)V

    return-object v1
.end method
