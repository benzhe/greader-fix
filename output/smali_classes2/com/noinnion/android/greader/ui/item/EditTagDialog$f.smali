.class public Lcom/noinnion/android/greader/ui/item/EditTagDialog$f;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/item/EditTagDialog;
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
.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lky6;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/noinnion/android/greader/ui/item/EditTagDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/EditTagDialog;Landroid/content/Context;ILjava/util/List;)V
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
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$f;->f:Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    .line 2
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3
    iput-object p4, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$f;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$f;->f:Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0c002f

    .line 2
    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$f;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lky6;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p3, v0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz p3, :cond_3

    .line 4
    iget-object v0, p3, Lky6;->d:Ljava/lang/Object;

    check-cast v0, Llp6;

    const v1, 0x7f09031c

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6
    iget-object v2, v0, Llp6;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090143

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 8
    iget v0, v0, Llp6;->g:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    const v0, 0x7f080190

    .line 9
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const v0, 0x7f0902f4

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 11
    iget-boolean p3, p3, Lky6;->e:Z

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    .line 12
    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 13
    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 14
    :goto_1
    new-instance p3, Lcom/noinnion/android/greader/ui/item/EditTagDialog$f$a;

    invoke-direct {p3, p0, p1}, Lcom/noinnion/android/greader/ui/item/EditTagDialog$f$a;-><init>(Lcom/noinnion/android/greader/ui/item/EditTagDialog$f;I)V

    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    return-object p2
.end method
