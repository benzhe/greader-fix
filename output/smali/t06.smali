.class public Lt06;
.super Lq06;
.source "SourceFile"


# instance fields
.field public d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

.field public e:Landroid/view/ViewGroup;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lf06;Landroid/view/LayoutInflater;Lj96;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lq06;-><init>(Lf06;Landroid/view/LayoutInflater;Lj96;)V

    return-void
.end method


# virtual methods
.method public c()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lt06;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public e()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lt06;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method public f()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lt06;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    return-object v0
.end method

.method public g(Ljava/util/Map;Landroid/view/View$OnClickListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lb96;",
            "Landroid/view/View$OnClickListener;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq06;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/google/firebase/inappmessaging/display/R$layout;->image:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->image_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    iput-object v1, p0, Lt06;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    .line 3
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->image_content_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lt06;->e:Landroid/view/ViewGroup;

    .line 4
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->image_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lt06;->f:Landroid/widget/ImageView;

    .line 5
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->collapse_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lt06;->g:Landroid/widget/Button;

    .line 6
    iget-object v0, p0, Lt06;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lq06;->b:Lf06;

    invoke-virtual {v1}, Lf06;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 7
    iget-object v0, p0, Lt06;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lq06;->b:Lf06;

    invoke-virtual {v1}, Lf06;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 8
    iget-object v0, p0, Lq06;->a:Lj96;

    .line 9
    iget-object v0, v0, Lj96;->a:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 10
    sget-object v1, Lcom/google/firebase/inappmessaging/model/MessageType;->IMAGE_ONLY:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lq06;->a:Lj96;

    check-cast v0, Li96;

    .line 12
    iget-object v1, p0, Lt06;->f:Landroid/widget/ImageView;

    .line 13
    iget-object v3, v0, Li96;->c:Lh96;

    if-eqz v3, :cond_1

    .line 14
    iget-object v3, v3, Lh96;->a:Ljava/lang/String;

    .line 15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v3, 0x8

    .line 16
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object v1, p0, Lt06;->f:Landroid/widget/ImageView;

    .line 18
    iget-object v0, v0, Li96;->d:Lb96;

    .line 19
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_2
    iget-object p1, p0, Lt06;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    invoke-virtual {p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;->setDismissListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p1, p0, Lt06;->g:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2
.end method
