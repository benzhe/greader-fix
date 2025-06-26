.class public Lwr6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/media/MusicActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/media/MusicActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwr6;->e:Lcom/noinnion/android/greader/ui/media/MusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    iget-object p2, p0, Lwr6;->e:Lcom/noinnion/android/greader/ui/media/MusicActivity;

    .line 2
    iget-object p2, p2, Lcom/noinnion/android/greader/ui/media/MusicActivity;->F:Lur6;

    if-eqz p2, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-interface {p2, p1}, Lur6;->C0(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
