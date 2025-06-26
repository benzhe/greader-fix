.class public Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f$a;->b:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;

    iput p2, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f$a;->a:I

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f$a;->b:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;->e:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f$a;->b:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;

    .line 5
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;->e:Ljava/util/ArrayList;

    .line 6
    iget v0, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f$a;->a:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lky6;

    iput-boolean p2, p1, Lky6;->e:Z

    .line 7
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f$a;->b:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;

    iget-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;->f:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    .line 8
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f;->e:Ljava/util/ArrayList;

    .line 9
    iget v1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$f$a;->a:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lky6;

    iget-object p1, p1, Lky6;->c:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 10
    iget-object p2, v0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->j:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 11
    iget-object p2, v0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->j:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    iget-object p2, v0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->i:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    iget-object p2, v0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->i:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 14
    iget-object p2, v0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->i:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_3
    iget-object p2, v0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->j:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
