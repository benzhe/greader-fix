.class public Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;
.super Lcom/noinnion/android/reader/ui/BaseDialogActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$d;,
        Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$c;
    }
.end annotation


# static fields
.field public static final synthetic A:I


# instance fields
.field public y:I

.field public z:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->y:I

    return-void
.end method


# virtual methods
.method public B()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->y:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 2
    iput v0, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->y:I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object v0

    check-cast v0, Lxb;

    .line 4
    new-instance v1, Lxb$i;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lxb$i;-><init>(Lxb;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v4}, Lxb;->S(Lxb$h;Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lt75;

    invoke-direct {v0, p0}, Lt75;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110325

    .line 2
    invoke-virtual {v0, v1}, Lt75;->m(I)Lt75;

    const v1, 0x7f1101c0

    .line 3
    invoke-virtual {v0, v1}, Lt75;->g(I)Lt75;

    const v1, 0x104000a

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$b;

    invoke-direct {v2, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$b;-><init>(Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lt75;->k(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;

    const/high16 p1, 0x1040000

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$a;

    invoke-direct {v1, p0}, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$a;-><init>(Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;)V

    invoke-virtual {v0, p1, v1}, Lt75;->i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;

    .line 6
    invoke-virtual {v0}, Lt75;->a()La0;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public D(J)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p1, p2, v1}, Lip6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, v0, Lip6;->h:Ljava/lang/String;

    .line 4
    new-instance v1, Lt75;

    invoke-direct {v1, p0}, Lt75;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v2, v1, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v2, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    const v0, 0x7f1101c4

    .line 6
    invoke-virtual {v1, v0}, Lt75;->g(I)Lt75;

    const v0, 0x104000a

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lvt6;

    invoke-direct {v2, p0, p1, p2}, Lvt6;-><init>(Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;J)V

    invoke-virtual {v1, v0, v2}, Lt75;->k(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;

    const/high16 p1, 0x1040000

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    sget-object p2, Lut6;->e:Lut6;

    invoke-virtual {v1, p1, p2}, Lt75;->i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;

    .line 9
    invoke-virtual {v1}, La0$a;->e()La0;

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->y:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 2
    iput v0, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->y:I

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->j:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;->g:Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    invoke-virtual {p0, p1, v0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->z(Landroid/os/Bundle;Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0074

    .line 3
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v1, 0x7f090322

    .line 4
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->s()Lc0;

    move-result-object v3

    invoke-virtual {v3, v1}, Lc0;->x(Landroidx/appcompat/widget/Toolbar;)V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object v1

    const v3, 0x7f11019b

    invoke-virtual {v1, v3}, Lu;->t(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object v1

    invoke-virtual {v1, v2}, Lu;->o(Z)V

    :cond_0
    if-nez p1, :cond_2

    .line 8
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p1

    .line 9
    iget-boolean p1, p1, Lhw6;->b:Z

    if-eqz p1, :cond_1

    new-instance p1, Llu6;

    invoke-direct {p1}, Llu6;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p1, Lmu6;

    invoke-direct {p1}, Lmu6;-><init>()V

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Ln56;->g1(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object v0

    check-cast v0, Lxb;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Lqb;

    invoke-direct {v1, v0}, Lqb;-><init>(Lxb;)V

    const v0, 0x7f090126

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v0, p1, v3, v2}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 15
    invoke-virtual {v1}, Lqb;->c()I

    goto :goto_1

    :cond_2
    const-string v0, "level"

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->y:I

    :goto_1
    const p1, 0x7f11010d

    .line 17
    invoke-static {p0, p1}, Ln56;->y2(Landroid/app/Activity;I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v1

    const/4 v2, -0x1

    .line 3
    iput v2, v1, Lhw6;->g:I

    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ln56;->H1(Landroid/content/Context;Z)V

    .line 5
    invoke-super {p0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-eq p1, v0, :cond_9

    const v0, 0x7f0901c5

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    invoke-static {p1, v2, v2, v1, v2}, Lep6;->y(Landroid/content/Context;ZZZZ)Lvd;

    move-result-object v0

    invoke-virtual {v0}, Lvd;->k()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 7
    new-instance v4, Lkp6$a;

    invoke-direct {v4, v0}, Lkp6$a;-><init>(Landroid/database/Cursor;)V

    .line 8
    iget v6, v4, Lkp6$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v7, 0x64

    const-string v8, "feed/"

    if-ge v6, v7, :cond_7

    .line 9
    :try_start_1
    iget-object v6, v4, Lkp6$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_2

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v7, v4, Lkp6$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_2
    iget-object v4, v4, Lkp6$a;->b:Ljava/lang/String;

    invoke-static {p1, v4, v2, v1}, Lep6;->x(Landroid/content/Context;Ljava/lang/String;ZZ)Lvd;

    move-result-object v4

    invoke-virtual {v4}, Lvd;->k()Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    :goto_1
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 14
    new-instance v7, Lip6;

    invoke-direct {v7, v4}, Lip6;-><init>(Landroid/database/Cursor;)V

    .line 15
    iget-object v9, v7, Lip6;->i:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 16
    iget-object v9, v7, Lip6;->i:Ljava/lang/String;

    goto :goto_2

    .line 17
    :cond_4
    iget-object v9, v7, Lip6;->f:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v7, Lip6;->f:Ljava/lang/String;

    invoke-virtual {v9, v8, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_5
    iget-object v9, v7, Lip6;->f:Ljava/lang/String;

    .line 18
    :goto_2
    new-instance v10, Lwx6;

    iget-object v11, v7, Lip6;->h:Ljava/lang/String;

    iget-object v7, v7, Lip6;->j:Ljava/lang/String;

    invoke-direct {v10, v11, v9, v7}, Lwx6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 19
    :cond_6
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 20
    throw p1

    .line 21
    :cond_7
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-instance v7, Lwx6;

    iget-object v9, v4, Lkp6$a;->d:Ljava/lang/String;

    iget-object v10, v4, Lkp6$a;->b:Ljava/lang/String;

    invoke-virtual {v10, v8, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v4, v4, Lkp6$a;->e:Ljava/lang/String;

    invoke-direct {v7, v9, v8, v4}, Lwx6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 22
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 23
    :try_start_4
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 24
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "opml_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".xml"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v2, Ljava/io/File;

    sget-object v4, Ldn6;->a:Ljava/lang/String;

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 28
    new-instance v4, Lzx6;

    invoke-direct {v4}, Lzx6;-><init>()V

    invoke-virtual {v4, v3, v0}, Lzx6;->a(Ljava/util/Map;Ljava/io/Writer;)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPML exported to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Ln56;->Y1(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_3
    return v1

    :catchall_1
    move-exception p1

    .line 32
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 33
    throw p1

    .line 34
    :cond_9
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->B()V

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget v0, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->y:I

    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
