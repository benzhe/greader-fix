.class public Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lky6;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lky6;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lky6;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;->f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;

    .line 2
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3
    iput-object p4, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;->f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0c00ea

    .line 2
    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lky6;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, p3

    :goto_0
    if-eqz v0, :cond_d

    .line 4
    iget-object v1, v0, Lky6;->d:Ljava/lang/Object;

    check-cast v1, Lip6;

    const v2, 0x7f0900a5

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0902bf

    .line 6
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;->f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;

    iget-object v4, v4, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    sget-object v5, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->e:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eq v4, v5, :cond_c

    sget-object v5, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    if-eq v4, v5, :cond_c

    sget-object v5, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->g:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    if-ne v4, v5, :cond_1

    goto/16 :goto_7

    .line 8
    :cond_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0902c0

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 11
    iget-object v2, v1, Lip6;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902be

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 13
    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 14
    iget-object p3, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;->f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;

    iget-object v2, p3, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    sget-object v3, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->h:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    const/4 v4, -0x1

    const v5, 0x1090009

    const v6, 0x1090008

    if-ne v2, v3, :cond_3

    .line 15
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const v2, 0x7f030038

    invoke-static {p3, v2, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p3

    .line 16
    invoke-virtual {p3, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 17
    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 18
    iget p3, v1, Lip6;->u:I

    if-ne p3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v7, p3, 0x1

    .line 19
    :goto_1
    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    .line 20
    :cond_3
    sget-object v3, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->i:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    if-ne v2, v3, :cond_5

    .line 21
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const v2, 0x7f030036

    invoke-static {p3, v2, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p3

    .line 22
    invoke-virtual {p3, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 23
    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 24
    iget p3, v1, Lip6;->v:I

    if-ne p3, v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v7, p3, 0x1

    .line 25
    :goto_2
    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_6

    .line 26
    :cond_5
    sget-object v3, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->j:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    if-ne v2, v3, :cond_7

    .line 27
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const v2, 0x7f030037

    invoke-static {p3, v2, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p3

    .line 28
    invoke-virtual {p3, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 29
    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 30
    iget p3, v1, Lip6;->w:I

    if-ne p3, v4, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v7, p3, 0x1

    .line 31
    :goto_3
    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_6

    .line 32
    :cond_7
    sget-object v3, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->k:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    if-ne v2, v3, :cond_9

    .line 33
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const v2, 0x7f030039

    invoke-static {p3, v2, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p3

    .line 34
    invoke-virtual {p3, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 35
    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 36
    iget p3, v1, Lip6;->x:I

    if-ne p3, v4, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v7, p3, 0x1

    .line 37
    :goto_4
    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_6

    .line 38
    :cond_9
    sget-object v3, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->l:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    if-ne v2, v3, :cond_b

    .line 39
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const v2, 0x7f03003a

    invoke-static {p3, v2, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p3

    .line 40
    invoke-virtual {p3, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 41
    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 42
    iget p3, v1, Lip6;->y:I

    if-ne p3, v4, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v7, p3, 0x1

    .line 43
    :goto_5
    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 44
    :cond_b
    :goto_6
    new-instance p3, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c$b;

    invoke-direct {p3, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c$b;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;I)V

    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_8

    .line 45
    :cond_c
    :goto_7
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f09031c

    .line 47
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 48
    iget-object v1, v1, Lip6;->h:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0900a4

    .line 49
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    .line 50
    iget-boolean v0, v0, Lky6;->e:Z

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 51
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c$a;

    invoke-direct {v0, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c$a;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;I)V

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    :goto_8
    return-object p2
.end method
