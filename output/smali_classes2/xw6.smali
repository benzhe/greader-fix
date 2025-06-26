.class public final Lxw6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lxw6;->e:Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lxw6;->e:Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->finish()V

    return-void
.end method
