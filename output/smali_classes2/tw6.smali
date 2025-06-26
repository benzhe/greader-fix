.class public Ltw6;
.super Lp65;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw6$b;
    }
.end annotation


# instance fields
.field public e:Ltw6$b;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/Spinner;

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(IIILtw6$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp65;-><init>()V

    .line 2
    iput-object p4, p0, Ltw6;->e:Ltw6$b;

    .line 3
    iput p1, p0, Ltw6;->j:I

    .line 4
    iput p2, p0, Ltw6;->k:I

    .line 5
    iput p3, p0, Ltw6;->l:I

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Ltw6;->f:Landroid/widget/ImageView;

    iget v1, p0, Ltw6;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Ltw6;->g:Landroid/widget/ImageView;

    iget v1, p0, Ltw6;->l:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Ltw6;->h:Landroid/widget/ImageView;

    iget v1, p0, Ltw6;->l:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lrb;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/noinnion/android/reader/R$array;->font_labels:I

    const v1, 0x1090008

    invoke-static {p1, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p1

    const v0, 0x1090009

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 4
    iget-object v0, p0, Ltw6;->i:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 5
    iget-object p1, p0, Ltw6;->i:Landroid/widget/Spinner;

    iget v0, p0, Ltw6;->j:I

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 6
    iget-object p1, p0, Ltw6;->i:Landroid/widget/Spinner;

    new-instance v0, Ltw6$a;

    invoke-direct {v0, p0}, Ltw6$a;-><init>(Ltw6;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/noinnion/android/reader/R$id;->font_size_down:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 3
    iget p1, p0, Ltw6;->k:I

    sub-int/2addr p1, v1

    iput p1, p0, Ltw6;->k:I

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Ltw6;->k:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Ltw6;->e:Ltw6$b;

    if-eqz p1, :cond_4

    iget v0, p0, Ltw6;->j:I

    iget v1, p0, Ltw6;->k:I

    iget v2, p0, Ltw6;->l:I

    invoke-interface {p1, v0, v1, v2}, Ltw6$b;->a(III)V

    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lcom/noinnion/android/reader/R$id;->font_size_up:I

    if-ne p1, v0, :cond_1

    .line 7
    iget p1, p0, Ltw6;->k:I

    add-int/2addr p1, v1

    iput p1, p0, Ltw6;->k:I

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Ltw6;->k:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Ltw6;->e:Ltw6$b;

    if-eqz p1, :cond_4

    iget v0, p0, Ltw6;->j:I

    iget v1, p0, Ltw6;->k:I

    iget v2, p0, Ltw6;->l:I

    invoke-interface {p1, v0, v1, v2}, Ltw6$b;->a(III)V

    goto :goto_0

    .line 10
    :cond_1
    sget v0, Lcom/noinnion/android/reader/R$id;->text_align_left:I

    if-ne p1, v0, :cond_2

    .line 11
    iput v1, p0, Ltw6;->l:I

    .line 12
    invoke-virtual {p0}, Ltw6;->e()V

    .line 13
    iget-object p1, p0, Ltw6;->e:Ltw6$b;

    if-eqz p1, :cond_4

    iget v0, p0, Ltw6;->j:I

    iget v1, p0, Ltw6;->k:I

    iget v2, p0, Ltw6;->l:I

    invoke-interface {p1, v0, v1, v2}, Ltw6$b;->a(III)V

    goto :goto_0

    .line 14
    :cond_2
    sget v0, Lcom/noinnion/android/reader/R$id;->text_align_right:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x2

    .line 15
    iput p1, p0, Ltw6;->l:I

    .line 16
    invoke-virtual {p0}, Ltw6;->e()V

    .line 17
    iget-object p1, p0, Ltw6;->e:Ltw6$b;

    if-eqz p1, :cond_4

    iget v0, p0, Ltw6;->j:I

    iget v1, p0, Ltw6;->k:I

    iget v2, p0, Ltw6;->l:I

    invoke-interface {p1, v0, v1, v2}, Ltw6$b;->a(III)V

    goto :goto_0

    .line 18
    :cond_3
    sget v0, Lcom/noinnion/android/reader/R$id;->text_align_justify:I

    if-ne p1, v0, :cond_4

    const/4 p1, 0x3

    .line 19
    iput p1, p0, Ltw6;->l:I

    .line 20
    invoke-virtual {p0}, Ltw6;->e()V

    .line 21
    iget-object p1, p0, Ltw6;->e:Ltw6$b;

    if-eqz p1, :cond_4

    iget v0, p0, Ltw6;->j:I

    iget v1, p0, Ltw6;->k:I

    iget v2, p0, Ltw6;->l:I

    invoke-interface {p1, v0, v1, v2}, Ltw6$b;->a(III)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lrb;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    sget p3, Lcom/noinnion/android/reader/R$layout;->dialog_fonts:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    sget p2, Lcom/noinnion/android/reader/R$id;->text_align_left:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Ltw6;->f:Landroid/widget/ImageView;

    .line 3
    sget p2, Lcom/noinnion/android/reader/R$id;->text_align_right:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Ltw6;->g:Landroid/widget/ImageView;

    .line 4
    sget p2, Lcom/noinnion/android/reader/R$id;->text_align_justify:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Ltw6;->h:Landroid/widget/ImageView;

    .line 5
    sget p2, Lcom/noinnion/android/reader/R$id;->fonts_spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Ltw6;->i:Landroid/widget/Spinner;

    .line 6
    sget p2, Lcom/noinnion/android/reader/R$id;->font_size_down:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget p2, Lcom/noinnion/android/reader/R$id;->font_size_up:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p2, p0, Ltw6;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p2, p0, Ltw6;->g:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p2, p0, Ltw6;->h:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {p0}, Ltw6;->e()V

    return-object p1
.end method
