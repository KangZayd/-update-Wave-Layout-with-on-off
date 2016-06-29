.class Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder$1;
.super Ljava/lang/Object;
.source "ListApplicationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;->bind(Landroid/content/pm/ApplicationInfo;Lcom/dhian/ListApplicationAdapter$OnItemClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;

.field final synthetic val$item:Landroid/content/pm/ApplicationInfo;

.field final synthetic val$listener:Lcom/dhian/ListApplicationAdapter$OnItemClickListener;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;Lcom/dhian/ListApplicationAdapter$OnItemClickListener;Landroid/content/pm/ApplicationInfo;I)V
    .locals 0

    iput-object p1, p0, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder$1;->this$1:Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder;

    iput-object p2, p0, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder$1;->val$listener:Lcom/dhian/ListApplicationAdapter$OnItemClickListener;

    iput-object p3, p0, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder$1;->val$item:Landroid/content/pm/ApplicationInfo;

    iput p4, p0, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder$1;->val$listener:Lcom/dhian/ListApplicationAdapter$OnItemClickListener;

    iget-object v1, p0, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder$1;->val$item:Landroid/content/pm/ApplicationInfo;

    iget v2, p0, Lcom/dhian/ListApplicationAdapter$ApplicationViewHolder$1;->val$position:I

    invoke-interface {v0, v1, v2}, Lcom/dhian/ListApplicationAdapter$OnItemClickListener;->onItemClick(Landroid/content/pm/ApplicationInfo;I)V

    return-void
.end method
