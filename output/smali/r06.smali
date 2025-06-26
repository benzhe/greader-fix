.class public Lr06;
.super Lq06;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr06$a;
    }
.end annotation


# instance fields
.field public d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamCardView;

.field public e:Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;

.field public f:Landroid/widget/ScrollView;

.field public g:Landroid/widget/Button;

.field public h:Landroid/widget/Button;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Lg96;

.field public m:Landroid/view/View$OnClickListener;

.field public n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Lf06;Landroid/view/LayoutInflater;Lj96;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lq06;-><init>(Lf06;Landroid/view/LayoutInflater;Lj96;)V

    .line 2
    new-instance p1, Lr06$a;

    invoke-direct {p1, p0}, Lr06$a;-><init>(Lr06;)V

    iput-object p1, p0, Lr06;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method


# virtual methods
.method public b()Lf06;
    .locals 1

    .line 1
    iget-object v0, p0, Lq06;->b:Lf06;

    return-object v0
.end method

.method public c()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lr06;->e:Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;

    return-object v0
.end method

.method public d()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lr06;->m:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public e()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lr06;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method public f()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lr06;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamCardView;

    return-object v0
.end method

.method public g(Ljava/util/Map;Landroid/view/View$OnClickListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 6
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

    sget v1, Lcom/google/firebase/inappmessaging/display/R$layout;->card:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->body_scroll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lr06;->f:Landroid/widget/ScrollView;

    .line 3
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->primary_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lr06;->g:Landroid/widget/Button;

    .line 4
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->secondary_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lr06;->h:Landroid/widget/Button;

    .line 5
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->image_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lr06;->i:Landroid/widget/ImageView;

    .line 6
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->message_body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lr06;->j:Landroid/widget/TextView;

    .line 7
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->message_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lr06;->k:Landroid/widget/TextView;

    .line 8
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->card_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamCardView;

    iput-object v1, p0, Lr06;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamCardView;

    .line 9
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->card_content_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;

    iput-object v0, p0, Lr06;->e:Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;

    .line 10
    iget-object v0, p0, Lq06;->a:Lj96;

    .line 11
    iget-object v0, v0, Lj96;->a:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 12
    sget-object v1, Lcom/google/firebase/inappmessaging/model/MessageType;->CARD:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    iget-object v0, p0, Lq06;->a:Lj96;

    check-cast v0, Lg96;

    iput-object v0, p0, Lr06;->l:Lg96;

    .line 14
    iget-object v1, p0, Lr06;->k:Landroid/widget/TextView;

    .line 15
    iget-object v2, v0, Lg96;->c:Lp96;

    .line 16
    iget-object v2, v2, Lp96;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v1, p0, Lr06;->k:Landroid/widget/TextView;

    .line 19
    iget-object v2, v0, Lg96;->c:Lp96;

    .line 20
    iget-object v2, v2, Lp96;->b:Ljava/lang/String;

    .line 21
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    iget-object v1, v0, Lg96;->d:Lp96;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 23
    iget-object v1, v1, Lp96;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24
    iget-object v1, p0, Lr06;->f:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 25
    iget-object v1, p0, Lr06;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object v1, p0, Lr06;->j:Landroid/widget/TextView;

    .line 27
    iget-object v4, v0, Lg96;->d:Lp96;

    .line 28
    iget-object v4, v4, Lp96;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v1, p0, Lr06;->j:Landroid/widget/TextView;

    .line 31
    iget-object v0, v0, Lg96;->d:Lp96;

    .line 32
    iget-object v0, v0, Lp96;->b:Ljava/lang/String;

    .line 33
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lr06;->f:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lr06;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    :goto_0
    iget-object v0, p0, Lr06;->l:Lg96;

    .line 37
    iget-object v1, v0, Lg96;->h:Lh96;

    if-nez v1, :cond_2

    .line 38
    iget-object v0, v0, Lg96;->i:Lh96;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 39
    :cond_1
    iget-object v0, p0, Lr06;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 40
    :cond_2
    :goto_1
    iget-object v0, p0, Lr06;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    :goto_2
    iget-object v0, p0, Lr06;->l:Lg96;

    .line 42
    iget-object v1, v0, Lg96;->f:Lb96;

    .line 43
    iget-object v0, v0, Lg96;->g:Lb96;

    .line 44
    iget-object v4, p0, Lr06;->g:Landroid/widget/Button;

    .line 45
    iget-object v5, v1, Lb96;->b:Le96;

    .line 46
    invoke-static {v4, v5}, Lq06;->i(Landroid/widget/Button;Le96;)V

    .line 47
    iget-object v4, p0, Lr06;->g:Landroid/widget/Button;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnClickListener;

    if-eqz v4, :cond_3

    .line 48
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    :cond_3
    iget-object v1, p0, Lr06;->g:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz v0, :cond_5

    .line 50
    iget-object v1, v0, Lb96;->b:Le96;

    if-eqz v1, :cond_5

    .line 51
    iget-object v3, p0, Lr06;->h:Landroid/widget/Button;

    invoke-static {v3, v1}, Lq06;->i(Landroid/widget/Button;Le96;)V

    .line 52
    iget-object v1, p0, Lr06;->h:Landroid/widget/Button;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_4

    .line 53
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    :cond_4
    iget-object p1, p0, Lr06;->h:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 55
    :cond_5
    iget-object p1, p0, Lr06;->h:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    :goto_3
    iget-object p1, p0, Lq06;->b:Lf06;

    .line 57
    iget-object v0, p0, Lr06;->i:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lf06;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 58
    iget-object v0, p0, Lr06;->i:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lf06;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 59
    iput-object p2, p0, Lr06;->m:Landroid/view/View$OnClickListener;

    .line 60
    iget-object p1, p0, Lr06;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamCardView;

    invoke-virtual {p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamCardView;->setDismissListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p0, Lr06;->e:Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;

    iget-object p2, p0, Lr06;->l:Lg96;

    .line 62
    iget-object p2, p2, Lg96;->e:Ljava/lang/String;

    .line 63
    invoke-virtual {p0, p1, p2}, Lq06;->h(Landroid/view/View;Ljava/lang/String;)V

    .line 64
    :cond_6
    iget-object p1, p0, Lr06;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p1
.end method
