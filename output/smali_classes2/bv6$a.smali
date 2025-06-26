.class public Lbv6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbv6;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Landroid/widget/ImageView;

.field public final synthetic g:Lbv6;


# direct methods
.method public constructor <init>(Lbv6;ILandroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbv6$a;->g:Lbv6;

    iput p2, p0, Lbv6$a;->e:I

    iput-object p3, p0, Lbv6$a;->f:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lbv6$a;->g:Lbv6;

    invoke-virtual {p1}, Lqm6;->getCount()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget v0, p0, Lbv6$a;->e:I

    add-int/lit8 p1, p1, -0x1

    if-le v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lbv6$a;->f:Landroid/widget/ImageView;

    const v0, 0x7f0800ed

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lbv6$a;->g:Lbv6;

    iget v0, p0, Lbv6$a;->e:I

    invoke-virtual {p1, v0}, Lqm6;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/reader/common/subscription/Feed;

    .line 5
    iget-object v0, p0, Lbv6$a;->g:Lbv6;

    iget-object v0, v0, Lbv6;->j:Lan6;

    const-string v1, "EVENT_SUBSCRIBE"

    invoke-virtual {v0, v1, p1}, Lan6;->b(Ljava/lang/String;Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method
