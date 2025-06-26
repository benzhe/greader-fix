.class public Lcom/miguelcatalan/materialsearchview/MaterialSearchView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miguelcatalan/materialsearchview/MaterialSearchView$e;,
        Lcom/miguelcatalan/materialsearchview/MaterialSearchView$d;,
        Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;
    }
.end annotation


# static fields
.field public static final synthetic C:I


# instance fields
.field public A:Landroid/content/Context;

.field public final B:Landroid/view/View$OnClickListener;

.field public e:Landroid/view/MenuItem;

.field public f:Z

.field public g:I

.field public h:Z

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Landroid/widget/ListView;

.field public l:Landroid/widget/EditText;

.field public m:Landroid/widget/ImageButton;

.field public n:Landroid/widget/ImageButton;

.field public o:Landroid/widget/ImageButton;

.field public p:Landroid/widget/RelativeLayout;

.field public q:Ljava/lang/CharSequence;

.field public r:Ljava/lang/CharSequence;

.field public s:Lcom/miguelcatalan/materialsearchview/MaterialSearchView$d;

.field public t:Lcom/miguelcatalan/materialsearchview/MaterialSearchView$e;

.field public u:Landroid/widget/ListAdapter;

.field public v:Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->f:Z

    .line 5
    iput-boolean v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->w:Z

    .line 6
    iput-boolean v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->x:Z

    .line 7
    new-instance v1, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$a;

    invoke-direct {v1, p0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$a;-><init>(Lcom/miguelcatalan/materialsearchview/MaterialSearchView;)V

    iput-object v1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->B:Landroid/view/View$OnClickListener;

    .line 8
    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->A:Landroid/content/Context;

    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v2, Lcom/miguelcatalan/materialsearchview/R$layout;->search_view:I

    const/4 v3, 0x1

    invoke-virtual {p1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    sget p1, Lcom/miguelcatalan/materialsearchview/R$id;->search_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->i:Landroid/view/View;

    .line 11
    sget v2, Lcom/miguelcatalan/materialsearchview/R$id;->search_top_bar:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->p:Landroid/widget/RelativeLayout;

    .line 12
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->i:Landroid/view/View;

    sget v2, Lcom/miguelcatalan/materialsearchview/R$id;->suggestion_list:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->k:Landroid/widget/ListView;

    .line 13
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->i:Landroid/view/View;

    sget v2, Lcom/miguelcatalan/materialsearchview/R$id;->searchTextView:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    .line 14
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->i:Landroid/view/View;

    sget v2, Lcom/miguelcatalan/materialsearchview/R$id;->action_up_btn:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->m:Landroid/widget/ImageButton;

    .line 15
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->i:Landroid/view/View;

    sget v2, Lcom/miguelcatalan/materialsearchview/R$id;->action_voice_btn:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->n:Landroid/widget/ImageButton;

    .line 16
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->i:Landroid/view/View;

    sget v2, Lcom/miguelcatalan/materialsearchview/R$id;->action_empty_btn:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->o:Landroid/widget/ImageButton;

    .line 17
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->i:Landroid/view/View;

    sget v2, Lcom/miguelcatalan/materialsearchview/R$id;->transparent_view:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->j:Landroid/view/View;

    .line 18
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 19
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->m:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->n:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->o:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->j:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iput-boolean v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->y:Z

    .line 25
    invoke-virtual {p0, v3}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->e(Z)V

    .line 26
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    new-instance v1, Ljm6;

    invoke-direct {v1, p0}, Ljm6;-><init>(Lcom/miguelcatalan/materialsearchview/MaterialSearchView;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 27
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    new-instance v1, Lkm6;

    invoke-direct {v1, p0}, Lkm6;-><init>(Lcom/miguelcatalan/materialsearchview/MaterialSearchView;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 28
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    new-instance v1, Llm6;

    invoke-direct {v1, p0}, Llm6;-><init>(Lcom/miguelcatalan/materialsearchview/MaterialSearchView;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 29
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->k:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    const/16 p1, 0x190

    .line 30
    invoke-virtual {p0, p1}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setAnimationDuration(I)V

    .line 31
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->A:Landroid/content/Context;

    sget-object v1, Lcom/miguelcatalan/materialsearchview/R$styleable;->MaterialSearchView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 32
    sget p2, Lcom/miguelcatalan/materialsearchview/R$styleable;->MaterialSearchView_searchBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 33
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 34
    :cond_0
    sget p2, Lcom/miguelcatalan/materialsearchview/R$styleable;->MaterialSearchView_android_textColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 35
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setTextColor(I)V

    .line 36
    :cond_1
    sget p2, Lcom/miguelcatalan/materialsearchview/R$styleable;->MaterialSearchView_android_textColorHint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 37
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setHintTextColor(I)V

    .line 38
    :cond_2
    sget p2, Lcom/miguelcatalan/materialsearchview/R$styleable;->MaterialSearchView_android_hint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setHint(Ljava/lang/CharSequence;)V

    .line 40
    :cond_3
    sget p2, Lcom/miguelcatalan/materialsearchview/R$styleable;->MaterialSearchView_searchVoiceIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setVoiceIcon(Landroid/graphics/drawable/Drawable;)V

    .line 42
    :cond_4
    sget p2, Lcom/miguelcatalan/materialsearchview/R$styleable;->MaterialSearchView_searchCloseIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_5
    sget p2, Lcom/miguelcatalan/materialsearchview/R$styleable;->MaterialSearchView_searchBackIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setBackIcon(Landroid/graphics/drawable/Drawable;)V

    .line 46
    :cond_6
    sget p2, Lcom/miguelcatalan/materialsearchview/R$styleable;->MaterialSearchView_searchSuggestionBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setSuggestionBackground(Landroid/graphics/drawable/Drawable;)V

    .line 48
    :cond_7
    sget p2, Lcom/miguelcatalan/materialsearchview/R$styleable;->MaterialSearchView_searchSuggestionIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setSuggestionIcon(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_9
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->k:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->clearFocus()V

    .line 5
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->t:Lcom/miguelcatalan/materialsearchview/MaterialSearchView$e;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$e;->b()V

    :cond_2
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->f:Z

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->s:Lcom/miguelcatalan/materialsearchview/MaterialSearchView$d;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->a()V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Lmm6;

    invoke-direct {p1, p0}, Lmm6;-><init>(Lcom/miguelcatalan/materialsearchview/MaterialSearchView;)V

    .line 4
    iget-object v2, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->i:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v2, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->p:Landroid/widget/RelativeLayout;

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v5, 0x41c00000    # 24.0f

    .line 8
    invoke-static {v0, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 10
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    .line 11
    invoke-static {v2, v3, v4, v6, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v3

    .line 12
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    new-instance v1, Lom6;

    invoke-direct {v1, p1, v2}, Lom6;-><init>(Lpm6;Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->i:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->t:Lcom/miguelcatalan/materialsearchview/MaterialSearchView$e;

    if-eqz p1, :cond_2

    .line 17
    invoke-interface {p1}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$e;->a()V

    .line 18
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->f:Z

    return-void
.end method

.method public clearFocus()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->h:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4
    invoke-super {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 5
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 6
    iput-boolean v2, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->h:Z

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->u:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->k:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->k:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    iget-boolean p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->y:Z

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->n:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->n:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->d()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->k:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->k:Landroid/widget/ListView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;

    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->v:Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;

    .line 4
    iget-boolean p1, p1, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;->f:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->c(Z)V

    .line 6
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->v:Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;

    iget-object v0, v0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->v:Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;

    invoke-direct {v1, v0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iput-object v1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->v:Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;

    .line 3
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->r:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, v1, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;->e:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->v:Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;

    iget-boolean v1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->f:Z

    iput-boolean v1, v0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$SavedState;->f:Z

    return-object v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->u:Landroid/widget/ListAdapter;

    .line 2
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->k:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->u:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->g:I

    return-void
.end method

.method public setBackIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->o:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCursorDrawable(I)V
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mCursorDrawableRes"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    iget-object v1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MaterialSearchView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setEllipsize(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->x:Z

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHintTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    return-void
.end method

.method public setMenuItem(Landroid/view/MenuItem;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->e:Landroid/view/MenuItem;

    .line 2
    new-instance v0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$c;

    invoke-direct {v0, p0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$c;-><init>(Lcom/miguelcatalan/materialsearchview/MaterialSearchView;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->k:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnQueryTextListener(Lcom/miguelcatalan/materialsearchview/MaterialSearchView$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->s:Lcom/miguelcatalan/materialsearchview/MaterialSearchView$d;

    return-void
.end method

.method public setOnSearchViewListener(Lcom/miguelcatalan/materialsearchview/MaterialSearchView$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->t:Lcom/miguelcatalan/materialsearchview/MaterialSearchView$e;

    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 3
    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->r:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->b()V

    :cond_1
    return-void
.end method

.method public setSubmitOnClick(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->w:Z

    return-void
.end method

.method public setSuggestionBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->k:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSuggestionIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->z:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setSuggestions([Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    new-instance v0, Lnm6;

    iget-object v1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->A:Landroid/content/Context;

    iget-object v2, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->z:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->x:Z

    invoke-direct {v0, v1, p1, v2, v3}, Lnm6;-><init>(Landroid/content/Context;[Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5
    new-instance p1, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$b;

    invoke-direct {p1, p0, v0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$b;-><init>(Lcom/miguelcatalan/materialsearchview/MaterialSearchView;Lnm6;)V

    invoke-virtual {p0, p1}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->j:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method public setVoiceIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setVoiceSearch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->y:Z

    return-void
.end method
