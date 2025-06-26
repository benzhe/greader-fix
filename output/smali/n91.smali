.class public Ln91;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln91$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lll2;

.field public c:Landroid/os/Bundle;

.field public final d:Ljava/lang/String;

.field public final e:Lgl2;


# direct methods
.method public constructor <init>(Ln91$a;Lm91;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Ln91$a;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ln91;->a:Landroid/content/Context;

    .line 4
    iget-object p2, p1, Ln91$a;->b:Lll2;

    .line 5
    iput-object p2, p0, Ln91;->b:Lll2;

    .line 6
    iget-object p2, p1, Ln91$a;->c:Landroid/os/Bundle;

    .line 7
    iput-object p2, p0, Ln91;->c:Landroid/os/Bundle;

    .line 8
    iget-object p2, p1, Ln91$a;->d:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Ln91;->d:Ljava/lang/String;

    .line 10
    iget-object p1, p1, Ln91$a;->e:Lgl2;

    .line 11
    iput-object p1, p0, Ln91;->e:Lgl2;

    return-void
.end method
