.class Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ListApplicationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dhian/ListApplicationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationViewHolder"
.end annotation


# instance fields
.field cardItemLayout:Landroid/support/v7/widget/CardView;

.field iconApp:Landroid/widget/ImageView;

.field subTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/dhian/ListApplicationAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dhian/ListApplicationAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;->this$0:Lcom/dhian/ListApplicationAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0c008c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;->cardItemLayout:Landroid/support/v7/widget/CardView;

    const v0, 0x7f0c008e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0c008f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;->subTitle:Landroid/widget/TextView;

    const v0, 0x7f0c008d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;->iconApp:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bind(Landroid/content/pm/ApplicationInfo;Lcom/dhian/ListApplicationAdapter$OnItemClickListener;I)V
    .locals 2

    iget-object v0, p0, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder$1;-><init>(Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;Lcom/dhian/ListApplicationAdapter$OnItemClickListener;Landroid/content/pm/ApplicationInfo;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
