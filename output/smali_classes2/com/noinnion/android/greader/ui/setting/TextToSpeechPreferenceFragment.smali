.class public Lcom/noinnion/android/greader/ui/setting/TextToSpeechPreferenceFragment;
.super Ldx6;
.source "SourceFile"


# static fields
.field public static final synthetic l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldx6;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ldx6;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f14000c

    .line 2
    invoke-virtual {p0, p1}, Ldx6;->d(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1100fa

    invoke-static {p1, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    return-void
.end method
