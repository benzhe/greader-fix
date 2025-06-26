.class public final synthetic Lkz5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;


# instance fields
.field public final e:Llz5;

.field public final f:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Llz5;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkz5;->e:Llz5;

    iput-object p2, p0, Lkz5;->f:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public displayMessage(Lj96;Luy5;)V
    .locals 3

    iget-object v0, p0, Lkz5;->e:Llz5;

    iget-object v1, p0, Lkz5;->f:Landroid/app/Activity;

    .line 1
    iget-object v2, v0, Llz5;->n:Lj96;

    if-nez v2, :cond_0

    iget-object v2, v0, Llz5;->e:Lty5;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, v0, Llz5;->n:Lj96;

    .line 4
    iput-object p2, v0, Llz5;->o:Luy5;

    .line 5
    invoke-virtual {v0, v1}, Llz5;->e(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string p1, "Active FIAM exists. Skipping trigger"

    .line 6
    invoke-static {p1}, Lc50;->s0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
