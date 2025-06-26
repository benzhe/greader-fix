.class public final synthetic Lsy5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltc7;


# instance fields
.field public final e:Lty5;


# direct methods
.method public constructor <init>(Lty5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsy5;->e:Lty5;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 14

    iget-object v0, p0, Lsy5;->e:Lty5;

    check-cast p1, Lq96;

    .line 1
    iget-object v1, v0, Lty5;->d:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

    if-eqz v1, :cond_0

    .line 2
    iget-object v13, p1, Lq96;->a:Lj96;

    .line 3
    iget-object v0, v0, Lty5;->a:Lw26;

    .line 4
    iget-object v12, p1, Lq96;->b:Ljava/lang/String;

    .line 5
    new-instance p1, Lj36;

    iget-object v3, v0, Lw26;->a:Ly36;

    iget-object v4, v0, Lw26;->b:Lz86;

    iget-object v5, v0, Lw26;->c:Lm66;

    iget-object v6, v0, Lw26;->d:Lk66;

    iget-object v7, v0, Lw26;->e:Lo26;

    iget-object v8, v0, Lw26;->f:Lo96;

    iget-object v9, v0, Lw26;->g:Lr56;

    iget-object v10, v0, Lw26;->h:Lr26;

    move-object v2, p1

    move-object v11, v13

    invoke-direct/range {v2 .. v12}, Lj36;-><init>(Ly36;Lz86;Lm66;Lk66;Lo26;Lo96;Lr56;Lr26;Lj96;Ljava/lang/String;)V

    .line 6
    invoke-interface {v1, v13, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;->displayMessage(Lj96;Luy5;)V

    :cond_0
    return-void
.end method
