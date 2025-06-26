.class public Lo06;
.super Lq06;
.source "SourceFile"


# instance fields
.field public d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

.field public e:Landroid/view/ViewGroup;

.field public f:Landroid/widget/TextView;

.field public g:Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lf06;Landroid/view/LayoutInflater;Lj96;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lq06;-><init>(Lf06;Landroid/view/LayoutInflater;Lj96;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Lf06;
    .locals 1

    .line 1
    iget-object v0, p0, Lq06;->b:Lf06;

    return-object v0
.end method

.method public c()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lo06;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public d()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lo06;->i:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public e()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lo06;->g:Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;

    return-object v0
.end method

.method public f()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lo06;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    return-object v0
.end method

.method public g(Ljava/util/Map;Landroid/view/View$OnClickListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 7
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

    sget v1, Lcom/google/firebase/inappmessaging/display/R$layout;->banner:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->banner_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    iput-object v1, p0, Lo06;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    .line 3
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->banner_content_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lo06;->e:Landroid/view/ViewGroup;

    .line 4
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->banner_body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lo06;->f:Landroid/widget/TextView;

    .line 5
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->banner_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;

    iput-object v1, p0, Lo06;->g:Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;

    .line 6
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->banner_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo06;->h:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lq06;->a:Lj96;

    .line 8
    iget-object v0, v0, Lj96;->a:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 9
    sget-object v1, Lcom/google/firebase/inappmessaging/model/MessageType;->BANNER:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10
    iget-object v0, p0, Lq06;->a:Lj96;

    check-cast v0, Ld96;

    .line 11
    iget-object v1, v0, Ld96;->g:Ljava/lang/String;

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    iget-object v1, p0, Lo06;->e:Landroid/view/ViewGroup;

    .line 14
    iget-object v3, v0, Ld96;->g:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, v1, v3}, Lq06;->h(Landroid/view/View;Ljava/lang/String;)V

    .line 16
    :cond_0
    iget-object v1, p0, Lo06;->g:Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;

    .line 17
    iget-object v3, v0, Ld96;->e:Lh96;

    if-eqz v3, :cond_2

    .line 18
    iget-object v3, v3, Lh96;->a:Ljava/lang/String;

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v3, 0x8

    .line 20
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object v1, v0, Ld96;->c:Lp96;

    if-eqz v1, :cond_4

    .line 22
    iget-object v1, v1, Lp96;->a:Ljava/lang/String;

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 24
    iget-object v1, p0, Lo06;->h:Landroid/widget/TextView;

    .line 25
    iget-object v3, v0, Ld96;->c:Lp96;

    .line 26
    iget-object v3, v3, Lp96;->a:Ljava/lang/String;

    .line 27
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_3
    iget-object v1, v0, Ld96;->c:Lp96;

    .line 29
    iget-object v1, v1, Lp96;->b:Ljava/lang/String;

    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 31
    iget-object v1, p0, Lo06;->h:Landroid/widget/TextView;

    .line 32
    iget-object v3, v0, Ld96;->c:Lp96;

    .line 33
    iget-object v3, v3, Lp96;->b:Ljava/lang/String;

    .line 34
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    :cond_4
    iget-object v1, v0, Ld96;->d:Lp96;

    if-eqz v1, :cond_6

    .line 36
    iget-object v1, v1, Lp96;->a:Ljava/lang/String;

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 38
    iget-object v1, p0, Lo06;->f:Landroid/widget/TextView;

    .line 39
    iget-object v3, v0, Ld96;->d:Lp96;

    .line 40
    iget-object v3, v3, Lp96;->a:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_5
    iget-object v1, v0, Ld96;->d:Lp96;

    .line 43
    iget-object v1, v1, Lp96;->b:Ljava/lang/String;

    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 45
    iget-object v1, p0, Lo06;->f:Landroid/widget/TextView;

    .line 46
    iget-object v3, v0, Ld96;->d:Lp96;

    .line 47
    iget-object v3, v3, Lp96;->b:Ljava/lang/String;

    .line 48
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    :cond_6
    iget-object v1, p0, Lq06;->b:Lf06;

    .line 50
    iget-object v3, v1, Lf06;->d:Ljava/lang/Integer;

    .line 51
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 52
    iget-object v4, v1, Lf06;->c:Ljava/lang/Integer;

    .line 53
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 54
    iget-object v4, p0, Lo06;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_7

    .line 55
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 56
    :cond_7
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 57
    iget-object v3, p0, Lo06;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v3, p0, Lo06;->g:Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;

    invoke-virtual {v1}, Lf06;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 59
    iget-object v3, p0, Lo06;->g:Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;

    invoke-virtual {v1}, Lf06;->b()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 60
    iput-object p2, p0, Lo06;->i:Landroid/view/View$OnClickListener;

    .line 61
    iget-object v1, p0, Lo06;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;

    invoke-virtual {v1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamFrameLayout;->setDismissListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p2, v0, Ld96;->f:Lb96;

    .line 63
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    .line 64
    iget-object p2, p0, Lo06;->e:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    return-object v2
.end method
