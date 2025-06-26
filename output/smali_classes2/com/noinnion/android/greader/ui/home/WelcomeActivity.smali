.class public Lcom/noinnion/android/greader/ui/home/WelcomeActivity;
.super Lcom/noinnion/android/reader/ui/BaseDialogActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/home/WelcomeActivity$a;
    }
.end annotation


# instance fields
.field public vListView:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090352
    .end annotation
.end field

.field public y:Lcom/noinnion/android/reader/util/gson/Help;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity;->y:Lcom/noinnion/android/reader/util/gson/Help;

    iget-object p1, p1, Lcom/noinnion/android/reader/util/gson/Help;->website:Ljava/lang/String;

    invoke-static {p0, p1}, Ljw6;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string p1, "https://play.google.com/store/apps/details?id=com.noinnion.android.greader.reader"

    .line 3
    invoke-static {p0, p1}, Ljw6;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :sswitch_2
    new-instance p1, Lt75;

    invoke-direct {p1, p0}, Lt75;-><init>(Landroid/content/Context;)V

    const v0, 0x7f11018e

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6
    iget-object v1, p1, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lvp6;

    invoke-direct {v1, p0}, Lvp6;-><init>(Lcom/noinnion/android/greader/ui/home/WelcomeActivity;)V

    invoke-virtual {p1, v0, v1}, Lt75;->f([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;

    .line 8
    invoke-virtual {p1}, Lt75;->a()La0;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 10
    :sswitch_3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity;->y:Lcom/noinnion/android/reader/util/gson/Help;

    iget-object p1, p1, Lcom/noinnion/android/reader/util/gson/Help;->faq:Ljava/lang/String;

    invoke-static {p0, p1}, Ljw6;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :sswitch_4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity;->y:Lcom/noinnion/android/reader/util/gson/Help;

    iget-object p1, p1, Lcom/noinnion/android/reader/util/gson/Help;->changelog:Ljava/lang/String;

    invoke-static {p0, p1}, Ljw6;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900a2 -> :sswitch_4
        0x7f09010d -> :sswitch_3
        0x7f090111 -> :sswitch_2
        0x7f09025e -> :sswitch_1
        0x7f09035f -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;->e:Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    invoke-virtual {p0, p1, v0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->z(Landroid/os/Bundle;Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;)V

    const p1, 0x7f0c010e

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    const p1, 0x7f090322

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->s()Lc0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc0;->x(Landroidx/appcompat/widget/Toolbar;)V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lu;->o(Z)V

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object p1

    const v0, 0x7f110192

    invoke-virtual {p1, v0}, Lu;->t(I)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0110

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09010d

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a2

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090143

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0801a6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln56;->a1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902dd

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09031c

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f11001d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0900d8

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f11001c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 16
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity;->vListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 17
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity;->vListView:Landroid/widget/ListView;

    new-instance v0, Lup6;

    invoke-direct {v0, p0}, Lup6;-><init>(Lcom/noinnion/android/greader/ui/home/WelcomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 18
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "welcome_listings.json"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 20
    new-array v0, v0, [B

    .line 21
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 22
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 23
    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 24
    new-instance v0, Lod6;

    invoke-direct {v0}, Lod6;-><init>()V

    .line 25
    const-class v1, Lcom/noinnion/android/reader/util/gson/Help;

    .line 26
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v2}, Lod6;->f(Ljava/io/Reader;)Leg6;

    move-result-object p1

    .line 28
    invoke-virtual {v0, p1, v1}, Lod6;->c(Leg6;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    invoke-static {v0, p1}, Lod6;->a(Ljava/lang/Object;Leg6;)V

    .line 30
    invoke-static {v1}, Ln56;->C2(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 31
    check-cast p1, Lcom/noinnion/android/reader/util/gson/Help;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity;->y:Lcom/noinnion/android/reader/util/gson/Help;

    .line 32
    new-instance p1, Lcom/noinnion/android/greader/ui/home/WelcomeActivity$a;

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity;->y:Lcom/noinnion/android/reader/util/gson/Help;

    iget-object v0, v0, Lcom/noinnion/android/reader/util/gson/Help;->listings:Ljava/util/List;

    invoke-direct {p1, p0, p0, v0}, Lcom/noinnion/android/greader/ui/home/WelcomeActivity$a;-><init>(Lcom/noinnion/android/greader/ui/home/WelcomeActivity;Landroid/content/Context;Ljava/util/List;)V

    .line 33
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity;->vListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const p1, 0x7f110112

    .line 35
    invoke-static {p0, p1}, Ln56;->y2(Landroid/app/Activity;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
