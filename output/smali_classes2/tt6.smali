.class public Ltt6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/setting/SendLogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltt6;->e:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ltt6;->e:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->z()V

    .line 2
    iget-object p1, p0, Ltt6;->e:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
