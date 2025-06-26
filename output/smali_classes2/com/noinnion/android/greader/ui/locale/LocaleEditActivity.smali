.class public final Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;
.super Lcom/noinnion/android/reader/ui/BaseDialogActivity;
.source "SourceFile"

# interfaces
.implements Lsd$a;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$b;,
        Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/noinnion/android/reader/ui/BaseDialogActivity;",
        "Lsd$a<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/ExpandableListView$OnGroupClickListener;",
        "Landroid/widget/ExpandableListView$OnChildClickListener;"
    }
.end annotation


# instance fields
.field public A:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$b;

.field public B:Landroid/widget/Spinner;

.field public C:Ljava/lang/String;

.field public D:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;

.field public E:Landroid/widget/Spinner;

.field public F:Landroid/widget/Spinner;

.field public G:Landroid/widget/Spinner;

.field public H:Landroid/widget/Spinner;

.field public I:Landroid/widget/ImageView;

.field public y:Z

.field public z:Landroid/widget/ExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->y:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;-><init>(Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->D:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->B:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->D:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;

    iget v0, v0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;->a:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->E:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->D:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;

    iget v0, v0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;->b:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 5
    :goto_1
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->F:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 6
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->D:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;

    iget v0, v0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;->c:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 7
    :goto_2
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->G:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 8
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->D:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;

    iget v0, v0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;->d:I

    if-ne v0, v2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v0, 0x1

    .line 9
    :goto_3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->H:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 10
    :cond_4
    invoke-static {p0}, Lsd;->b(Ldd;)Lsd;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2, p0}, Lsd;->c(ILandroid/os/Bundle;Lsd$a;)Lwd;

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "user/"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "uid"

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0, v2, p1, v1}, Llp6;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Llp6;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p1, Llp6;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "feed/"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p0, v2, p1, v1}, Lip6;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lip6;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p1, Lip6;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C:Ljava/lang/String;

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->B()V

    return-void
.end method

.method public f(Lwd;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/database/Cursor;

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->A:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$b;

    invoke-virtual {p1, p2}, Landroid/widget/ResourceCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->I:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->I:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public finish()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->B:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x4

    const-string v3, ""

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    if-eq v0, v2, :cond_1

    move-object v5, v3

    goto :goto_0

    :cond_1
    const-string v5, "SETTINGS"

    goto :goto_0

    :cond_2
    const-string v5, "READ ALOUD"

    goto :goto_0

    :cond_3
    const-string v5, "OFFLINE UNREAD"

    goto :goto_0

    :cond_4
    const-string v5, "SYNCHRONIZE OFFLINE"

    goto :goto_0

    :cond_5
    const-string v5, "SYNCHRONIZE"

    :goto_0
    if-ne v0, v2, :cond_a

    .line 4
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->E:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const-string v6, ";"

    if-lez v2, :cond_6

    const-string v7, "sync="

    .line 5
    invoke-static {v3, v7}, Ljo;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    :cond_6
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->F:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-lez v2, :cond_7

    const-string v7, "offline="

    .line 7
    invoke-static {v3, v7}, Ljo;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    :cond_7
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->G:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-lez v2, :cond_8

    const-string v7, "notification="

    .line 9
    invoke-static {v3, v7}, Ljo;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    :cond_8
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->H:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-lez v2, :cond_9

    const-string v7, "theme="

    .line 11
    invoke-static {v3, v7}, Ljo;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_9
    move-object v2, v3

    goto :goto_2

    :cond_a
    const v2, 0x7f110154

    .line 12
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C:Ljava/lang/String;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    .line 14
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C:Ljava/lang/String;

    const-string v4, "user/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v6, "uid"

    if-eqz v3, :cond_c

    .line 15
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C:Ljava/lang/String;

    invoke-static {p0, v6, v3, v1}, Llp6;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Llp6;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 16
    invoke-virtual {v3, p0}, Llp6;->h(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 17
    :cond_b
    iput-object v4, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C:Ljava/lang/String;

    goto :goto_1

    .line 18
    :cond_c
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C:Ljava/lang/String;

    const-string v7, "feed/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 19
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C:Ljava/lang/String;

    invoke-static {p0, v6, v3, v1}, Lip6;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lip6;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 20
    iget-object v2, v3, Lip6;->h:Ljava/lang/String;

    goto :goto_1

    .line 21
    :cond_d
    iput-object v4, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C:Ljava/lang/String;

    :cond_e
    :goto_1
    move-object v3, v2

    .line 22
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C:Ljava/lang/String;

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    .line 23
    :goto_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 24
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "com.noinnion.android.greader.reader.extra.TAG"

    .line 25
    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.noinnion.android.greader.reader.extra.ACTION"

    .line 26
    invoke-virtual {v6, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.twofortyfouram.locale.intent.extra.BUNDLE"

    .line 27
    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0029

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const-string v6, "com.twofortyfouram.locale.intent.extra.BLURB"

    if-le v2, v3, :cond_f

    .line 30
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 31
    :cond_f
    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    const/4 v0, -0x1

    .line 32
    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 33
    :goto_4
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public g(ILandroid/os/Bundle;)Lwd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lwd<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p2, p2, v0, p2}, Lep6;->y(Landroid/content/Context;ZZZZ)Lvd;

    move-result-object p1

    return-object p1
.end method

.method public k(Lwd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwd<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->A:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ResourceCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090099

    if-eq p1, v0, :cond_1

    const v0, 0x7f09022a

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->finish()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->y:Z

    .line 4
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "com.twofortyfouram.locale.intent.extra.BUNDLE"

    const/4 v4, 0x1

    .line 1
    invoke-virtual {v1, v2, v4}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->A(Landroid/os/Bundle;Z)V

    const/4 v5, 0x0

    .line 2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 7
    :catch_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    :goto_1
    const v0, 0x7f0c006b

    .line 8
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const v7, 0x7f11001d

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_10

    const-string v8, "LocaleApiLibrary"

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-string v12, ""

    if-nez v7, :cond_2

    :try_start_2
    const-string v0, "currentCrumb cannot be null"

    .line 10
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_2
    if-nez v6, :cond_3

    const-string v0, "intent cannot be null"

    .line 11
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    const-string v13, "com.twofortyfouram.locale.intent.extra.BREADCRUMB"

    .line 12
    invoke-virtual {v6, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 13
    sget v13, Lcom/twofortyfouram/locale/api/R$string;->twofortyfouram_locale_breadcrumb_format:I

    new-array v14, v9, [Ljava/lang/Object;

    aput-object v6, v14, v11

    sget v6, Lcom/twofortyfouram/locale/api/R$string;->twofortyfouram_locale_breadcrumb_separator:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v4

    aput-object v7, v14, v10

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :goto_2
    const-string v6, "Encountered error generating breadcrumb"

    .line 14
    invoke-static {v8, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    move-object v7, v12

    .line 15
    :cond_4
    :goto_4
    invoke-virtual {v1, v7}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f090322

    .line 16
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->s()Lc0;

    move-result-object v6

    invoke-virtual {v6, v0}, Lc0;->x(Landroidx/appcompat/widget/Toolbar;)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object v6

    const v7, 0x7f110160

    invoke-virtual {v6, v7}, Lu;->t(I)V

    const v6, 0x7f08001e

    .line 19
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 20
    new-instance v6, Lqr6;

    invoke-direct {v6, v1}, Lqr6;-><init>(Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;)V

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v0, 0x102000a

    .line 21
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->z:Landroid/widget/ExpandableListView;

    .line 22
    invoke-virtual {v0, v5}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "layout_inflater"

    .line 23
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v6, 0x7f0c0119

    .line 24
    invoke-virtual {v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v6, 0x7f090174

    .line 25
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f110154

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f090143

    .line 26
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f08018f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    const v6, 0x7f09029f

    .line 27
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->I:Landroid/widget/ImageView;

    const/16 v7, 0x8

    .line 28
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object v6, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 30
    iget-object v6, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    :cond_6
    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 32
    iget-object v6, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->z:Landroid/widget/ExpandableListView;

    invoke-virtual {v6, v0}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 33
    new-instance v0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$b;

    invoke-direct {v0, v1, v1, v5, v5}, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$b;-><init>(Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;Landroid/content/Context;Landroid/database/Cursor;Lqr6;)V

    iput-object v0, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->A:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$b;

    .line 34
    iget-object v5, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->z:Landroid/widget/ExpandableListView;

    invoke-virtual {v5, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 35
    iget-object v0, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->z:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 36
    iget-object v0, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->z:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 37
    iget-object v0, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->z:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    const v0, 0x7f090044

    .line 38
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->B:Landroid/widget/Spinner;

    const v0, 0x7f03002b

    const v5, 0x7f0c00d7

    .line 39
    invoke-static {v1, v0, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const v5, 0x1090009

    .line 40
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 41
    iget-object v6, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->B:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 42
    iget-object v0, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->B:Landroid/widget/Spinner;

    new-instance v6, Lrr6;

    invoke-direct {v6, v1}, Lrr6;-><init>(Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0902ee

    .line 43
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->E:Landroid/widget/Spinner;

    .line 44
    new-instance v0, Landroid/widget/ArrayAdapter;

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "-"

    aput-object v8, v7, v11

    const v12, 0x7f110031

    .line 45
    invoke-virtual {v1, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v4

    const v13, 0x7f110034

    invoke-virtual {v1, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v7, v10

    const v14, 0x7f11002f

    invoke-virtual {v1, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v7, v9

    const v15, 0x1090008

    invoke-direct {v0, v1, v15, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 47
    iget-object v7, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->E:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 48
    iget-object v0, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->D:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;

    iget v0, v0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;->a:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_7

    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    add-int/2addr v0, v4

    .line 49
    :goto_5
    iget-object v7, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->E:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setSelection(I)V

    const v0, 0x7f090228

    .line 50
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->F:Landroid/widget/Spinner;

    .line 51
    new-instance v0, Landroid/widget/ArrayAdapter;

    new-array v7, v6, [Ljava/lang/String;

    aput-object v8, v7, v11

    .line 52
    invoke-virtual {v1, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v7, v4

    invoke-virtual {v1, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v7, v10

    invoke-virtual {v1, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v7, v9

    invoke-direct {v0, v1, v15, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 54
    iget-object v7, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->F:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f090220

    .line 55
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->G:Landroid/widget/Spinner;

    .line 56
    new-instance v0, Landroid/widget/ArrayAdapter;

    new-array v7, v6, [Ljava/lang/String;

    aput-object v8, v7, v11

    .line 57
    invoke-virtual {v1, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v4

    invoke-virtual {v1, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v10

    invoke-virtual {v1, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v9

    invoke-direct {v0, v1, v15, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 59
    iget-object v7, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->G:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f090319

    .line 60
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->H:Landroid/widget/Spinner;

    .line 61
    new-instance v0, Landroid/widget/ArrayAdapter;

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    aput-object v8, v7, v11

    const v8, 0x7f110074

    .line 62
    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const v8, 0x7f110075

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const v8, 0x7f110076

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const v8, 0x7f110073

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v8, 0x5

    const v9, 0x7f110072

    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v0, v1, v15, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 64
    iget-object v5, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->H:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f09022a

    .line 65
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090099

    .line 66
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v2, :cond_f

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v2, "com.noinnion.android.greader.reader.extra.ACTION"

    .line 68
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 69
    iget-object v3, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->B:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    const-string v3, "com.noinnion.android.greader.reader.extra.TAG"

    .line 70
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ne v2, v6, :cond_e

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_8

    :cond_8
    const-string v2, ";"

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 73
    array-length v2, v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_d

    aget-object v5, v0, v3

    const-string v6, "="

    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 75
    array-length v6, v5

    if-ne v6, v10, :cond_c

    .line 76
    aget-object v6, v5, v11

    const-string v7, "sync"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "-1"

    if-eqz v6, :cond_9

    aget-object v6, v5, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 77
    iget-object v6, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->D:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;

    aget-object v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v6, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;->a:I

    goto :goto_7

    .line 78
    :cond_9
    aget-object v6, v5, v11

    const-string v8, "offline"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    aget-object v6, v5, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 79
    iget-object v6, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->D:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;

    aget-object v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v6, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;->b:I

    goto :goto_7

    .line 80
    :cond_a
    aget-object v6, v5, v11

    const-string v8, "notification"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    aget-object v6, v5, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 81
    iget-object v6, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->D:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;

    aget-object v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v6, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;->c:I

    goto :goto_7

    .line 82
    :cond_b
    aget-object v6, v5, v11

    const-string v8, "theme"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    aget-object v6, v5, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 83
    iget-object v6, v1, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->D:Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;

    aget-object v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v6, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity$a;->d:I

    :cond_c
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 84
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->B()V

    goto :goto_8

    .line 85
    :cond_e
    invoke-virtual {v1, v0}, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C(Ljava/lang/String;)V

    :cond_f
    :goto_8
    return-void

    .line 86
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "context cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    const v0, 0x7f09033c

    .line 4
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    const v0, 0x7f09033b

    .line 5
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    const v0, 0x7f09033d

    .line 6
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p3, :cond_0

    const-string p1, ""

    .line 2
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 4
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->C(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->finish()V

    return v1

    .line 4
    :pswitch_1
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "http://www.greader.co/tasker"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1

    .line 5
    :pswitch_2
    iput-boolean v1, p0, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->y:Z

    .line 6
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->finish()V

    return v1

    :pswitch_data_0
    .packed-switch 0x7f09033b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/locale/LocaleEditActivity;->B()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method
