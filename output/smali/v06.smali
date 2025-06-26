.class public Lv06;
.super Lq06;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv06$a;
    }
.end annotation


# instance fields
.field public d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamRelativeLayout;

.field public e:Landroid/view/ViewGroup;

.field public f:Landroid/widget/ScrollView;

.field public g:Landroid/widget/Button;

.field public h:Landroid/view/View;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Lk96;

.field public m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Lf06;Landroid/view/LayoutInflater;Lj96;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lq06;-><init>(Lf06;Landroid/view/LayoutInflater;Lj96;)V

    .line 2
    new-instance p1, Lv06$a;

    invoke-direct {p1, p0}, Lv06$a;-><init>(Lv06;)V

    iput-object p1, p0, Lv06;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

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
    iget-object v0, p0, Lv06;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public e()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lv06;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method public f()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lv06;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamRelativeLayout;

    return-object v0
.end method

.method public g(Ljava/util/Map;Landroid/view/View$OnClickListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 5
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

    sget v1, Lcom/google/firebase/inappmessaging/display/R$layout;->modal:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->body_scroll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lv06;->f:Landroid/widget/ScrollView;

    .line 3
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lv06;->g:Landroid/widget/Button;

    .line 4
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->collapse_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lv06;->h:Landroid/view/View;

    .line 5
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->image_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lv06;->i:Landroid/widget/ImageView;

    .line 6
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->message_body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lv06;->j:Landroid/widget/TextView;

    .line 7
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->message_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lv06;->k:Landroid/widget/TextView;

    .line 8
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->modal_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamRelativeLayout;

    iput-object v1, p0, Lv06;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamRelativeLayout;

    .line 9
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->modal_content_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lv06;->e:Landroid/view/ViewGroup;

    .line 10
    iget-object v0, p0, Lq06;->a:Lj96;

    .line 11
    iget-object v0, v0, Lj96;->a:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 12
    sget-object v1, Lcom/google/firebase/inappmessaging/model/MessageType;->MODAL:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    iget-object v0, p0, Lq06;->a:Lj96;

    check-cast v0, Lk96;

    iput-object v0, p0, Lv06;->l:Lk96;

    .line 14
    iget-object v1, v0, Lk96;->e:Lh96;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 15
    iget-object v1, v1, Lh96;->a:Ljava/lang/String;

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lv06;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    iget-object v1, p0, Lv06;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    :goto_1
    iget-object v1, v0, Lk96;->c:Lp96;

    if-eqz v1, :cond_3

    .line 20
    iget-object v1, v1, Lp96;->a:Ljava/lang/String;

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 22
    iget-object v1, p0, Lv06;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object v1, p0, Lv06;->k:Landroid/widget/TextView;

    .line 24
    iget-object v4, v0, Lk96;->c:Lp96;

    .line 25
    iget-object v4, v4, Lp96;->a:Ljava/lang/String;

    .line 26
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 27
    :cond_2
    iget-object v1, p0, Lv06;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    :goto_2
    iget-object v1, v0, Lk96;->c:Lp96;

    .line 29
    iget-object v1, v1, Lp96;->b:Ljava/lang/String;

    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 31
    iget-object v1, p0, Lv06;->k:Landroid/widget/TextView;

    .line 32
    iget-object v4, v0, Lk96;->c:Lp96;

    .line 33
    iget-object v4, v4, Lp96;->b:Ljava/lang/String;

    .line 34
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    :cond_3
    iget-object v1, v0, Lk96;->d:Lp96;

    if-eqz v1, :cond_4

    .line 36
    iget-object v1, v1, Lp96;->a:Ljava/lang/String;

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 38
    iget-object v1, p0, Lv06;->f:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 39
    iget-object v1, p0, Lv06;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v1, p0, Lv06;->j:Landroid/widget/TextView;

    .line 41
    iget-object v4, v0, Lk96;->d:Lp96;

    .line 42
    iget-object v4, v4, Lp96;->b:Ljava/lang/String;

    .line 43
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object v1, p0, Lv06;->j:Landroid/widget/TextView;

    .line 45
    iget-object v0, v0, Lk96;->d:Lp96;

    .line 46
    iget-object v0, v0, Lp96;->a:Ljava/lang/String;

    .line 47
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 48
    :cond_4
    iget-object v0, p0, Lv06;->f:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lv06;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    :goto_3
    iget-object v0, p0, Lv06;->l:Lk96;

    .line 51
    iget-object v0, v0, Lk96;->f:Lb96;

    if-eqz v0, :cond_6

    .line 52
    iget-object v1, v0, Lb96;->b:Le96;

    if-eqz v1, :cond_6

    .line 53
    iget-object v1, v1, Le96;->a:Lp96;

    .line 54
    iget-object v1, v1, Lp96;->a:Ljava/lang/String;

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 56
    iget-object v1, p0, Lv06;->g:Landroid/widget/Button;

    .line 57
    iget-object v0, v0, Lb96;->b:Le96;

    .line 58
    invoke-static {v1, v0}, Lq06;->i(Landroid/widget/Button;Le96;)V

    .line 59
    iget-object v0, p0, Lv06;->g:Landroid/widget/Button;

    iget-object v1, p0, Lv06;->l:Lk96;

    .line 60
    iget-object v1, v1, Lk96;->f:Lb96;

    .line 61
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5

    .line 62
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_5
    iget-object p1, p0, Lv06;->g:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 64
    :cond_6
    iget-object p1, p0, Lv06;->g:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 65
    :goto_4
    iget-object p1, p0, Lq06;->b:Lf06;

    .line 66
    iget-object v0, p0, Lv06;->i:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lf06;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 67
    iget-object v0, p0, Lv06;->i:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lf06;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 68
    iget-object p1, p0, Lv06;->h:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lv06;->d:Lcom/google/firebase/inappmessaging/display/internal/layout/FiamRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamRelativeLayout;->setDismissListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object p1, p0, Lv06;->e:Landroid/view/ViewGroup;

    iget-object p2, p0, Lv06;->l:Lk96;

    .line 71
    iget-object p2, p2, Lk96;->g:Ljava/lang/String;

    .line 72
    invoke-virtual {p0, p1, p2}, Lq06;->h(Landroid/view/View;Ljava/lang/String;)V

    .line 73
    :cond_7
    iget-object p1, p0, Lv06;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p1
.end method
