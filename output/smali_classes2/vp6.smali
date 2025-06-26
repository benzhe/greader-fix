.class public final synthetic Lvp6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/home/WelcomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/noinnion/android/greader/ui/home/WelcomeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvp6;->e:Lcom/noinnion/android/greader/ui/home/WelcomeActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lvp6;->e:Lcom/noinnion/android/greader/ui/home/WelcomeActivity;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1, p2}, Ln56;->q0(Landroid/app/Activity;I)V

    return-void
.end method
