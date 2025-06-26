.class public Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lky6;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lky6;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lky6;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;->f:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    .line 2
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3
    iput-object p4, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;->f:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;->f:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0c002f

    .line 3
    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p3, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;->e:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lky6;

    :cond_2
    :goto_0
    if-eqz p3, :cond_5

    .line 6
    iget-object v0, p3, Lky6;->d:Ljava/lang/Object;

    check-cast v0, Llp6;

    const v2, 0x7f09031c

    .line 7
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 8
    iget-object v3, v0, Llp6;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090143

    .line 9
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 10
    iget v0, v0, Llp6;->g:I

    const/16 v3, 0xb

    if-ne v0, v3, :cond_3

    const v0, 0x7f080190

    .line 11
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    const v0, 0x7f0902f4

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 13
    iget-boolean p3, p3, Lky6;->e:Z

    if-eqz p3, :cond_4

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    .line 15
    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 16
    :goto_1
    new-instance p3, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f$a;

    invoke-direct {p3, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f$a;-><init>(Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;I)V

    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5
    return-object p2
.end method
