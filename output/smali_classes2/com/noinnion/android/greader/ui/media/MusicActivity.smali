.class public Lcom/noinnion/android/greader/ui/media/MusicActivity;
.super Lcom/noinnion/android/reader/ui/BaseDialogActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Landroid/widget/ImageView;

.field public B:Landroid/widget/Button;

.field public C:Landroid/widget/Button;

.field public D:Landroid/widget/SeekBar;

.field public E:Z

.field public F:Lur6;

.field public G:Landroid/content/ServiceConnection;

.field public H:Z

.field public I:I

.field public J:Landroid/widget/TextView;

.field public K:Landroid/widget/TextView;

.field public L:Landroid/widget/TextView;

.field public M:Landroid/os/Handler;

.field public y:Landroid/widget/ImageView;

.field public z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->D:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->E:Z

    .line 4
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->F:Lur6;

    .line 5
    new-instance v1, Lcom/noinnion/android/greader/ui/media/MusicActivity$a;

    invoke-direct {v1, p0}, Lcom/noinnion/android/greader/ui/media/MusicActivity$a;-><init>(Lcom/noinnion/android/greader/ui/media/MusicActivity;)V

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->G:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->H:Z

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->I:I

    .line 8
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->J:Landroid/widget/TextView;

    .line 9
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->K:Landroid/widget/TextView;

    .line 10
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->L:Landroid/widget/TextView;

    .line 11
    new-instance v0, Lcom/noinnion/android/greader/ui/media/MusicActivity$b;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/media/MusicActivity$b;-><init>(Lcom/noinnion/android/greader/ui/media/MusicActivity;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->M:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public B(I)Ljava/lang/String;
    .locals 6

    .line 1
    div-int/lit16 p1, p1, 0x3e8

    .line 2
    div-int/lit8 v0, p1, 0x3c

    .line 3
    div-int/lit8 v1, v0, 0x3c

    .line 4
    rem-int/lit8 p1, p1, 0x3c

    .line 5
    rem-int/lit8 v0, v0, 0x3c

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lez v1, :cond_0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v4

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array v1, v4, [Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%02d:%02d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public finish()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->I:I

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/noinnion/android/greader/ui/media/MusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.noinnion.android.greader.reader.action.STOP"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4
    sget-object v1, Lu7;->a:Ljava/lang/Object;

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 8
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/noinnion/android/greader/ui/media/MusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->y:Landroid/widget/ImageView;

    const v2, 0x7f080125

    const/16 v3, 0x1a

    if-ne p1, v1, :cond_3

    .line 3
    iget p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->I:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/noinnion/android/greader/ui/media/MusicService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.noinnion.android.greader.reader.action.PAUSE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 5
    sget-object v0, Lu7;->a:Ljava/lang/Object;

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 10
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/noinnion/android/greader/ui/media/MusicService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.noinnion.android.greader.reader.action.PLAY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 11
    sget-object v0, Lu7;->a:Ljava/lang/Object;

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    .line 13
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->y:Landroid/widget/ImageView;

    const v0, 0x7f080124

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->z:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_5

    const-string p1, "com.noinnion.android.greader.reader.action.FORWARD"

    .line 17
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 18
    sget-object v0, Lu7;->a:Ljava/lang/Object;

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_4

    .line 20
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    .line 21
    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    .line 22
    :cond_5
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->A:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_7

    const-string p1, "com.noinnion.android.greader.reader.action.REWIND"

    .line 23
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 24
    sget-object v0, Lu7;->a:Ljava/lang/Object;

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_6

    .line 26
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    .line 27
    :cond_6
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    .line 28
    :cond_7
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->B:Landroid/widget/Button;

    if-ne p1, v1, :cond_9

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->H:Z

    const-string p1, "com.noinnion.android.greader.reader.action.STOP"

    .line 30
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 31
    sget-object v0, Lu7;->a:Ljava/lang/Object;

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_8

    .line 33
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 34
    :cond_8
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 35
    :goto_2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/media/MusicActivity;->finish()V

    goto :goto_3

    .line 37
    :cond_9
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->C:Landroid/widget/Button;

    if-ne p1, v0, :cond_a

    .line 38
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/media/MusicActivity;->finish()V

    :cond_a
    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->A(Landroid/os/Bundle;Z)V

    const p1, 0x7f0c00a5

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f090322

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->s()Lc0;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc0;->x(Landroidx/appcompat/widget/Toolbar;)V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object p1

    const v1, 0x7f110184

    invoke-virtual {p1, v1}, Lu;->t(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object p1

    invoke-virtual {p1, v0}, Lu;->o(Z)V

    :cond_0
    const p1, 0x7f0901bf

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->J:Landroid/widget/TextView;

    const p1, 0x7f090242

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->K:Landroid/widget/TextView;

    const p1, 0x7f0900f5

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->L:Landroid/widget/TextView;

    const p1, 0x7f090240

    .line 10
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->y:Landroid/widget/ImageView;

    const p1, 0x7f090124

    .line 11
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->z:Landroid/widget/ImageView;

    const p1, 0x7f09026d

    .line 12
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->A:Landroid/widget/ImageView;

    const p1, 0x7f0902d3

    .line 13
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->B:Landroid/widget/Button;

    const p1, 0x7f0900bc

    .line 14
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->C:Landroid/widget/Button;

    .line 15
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->B:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->C:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09029c

    .line 20
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->D:Landroid/widget/SeekBar;

    .line 21
    new-instance v1, Lwr6;

    invoke-direct {v1, p0}, Lwr6;-><init>(Lcom/noinnion/android/greader/ui/media/MusicActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 22
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/noinnion/android/greader/ui/media/MusicService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->G:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v1, v0}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->G:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/noinnion/android/greader/ui/media/MusicService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "com.noinnion.android.greader.reader.action.TOGGLE_PLAYBACK"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    sget-object p2, Lu7;->a:Ljava/lang/Object;

    .line 5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->E:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->E:Z

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity;->M:Landroid/os/Handler;

    const v1, -0x21524111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
