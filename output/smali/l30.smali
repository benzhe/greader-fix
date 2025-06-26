.class public final Ll30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:J

.field public final synthetic g:Lj40;


# direct methods
.method public constructor <init>(Lj40;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll30;->g:Lj40;

    iput-object p2, p0, Ll30;->e:Ljava/lang/String;

    iput-wide p3, p0, Ll30;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ll30;->g:Lj40;

    .line 2
    iget-object v0, v0, Lj40;->e:Ltg0$a;

    .line 3
    iget-object v1, p0, Ll30;->e:Ljava/lang/String;

    iget-wide v2, p0, Ll30;->f:J

    invoke-virtual {v0, v1, v2, v3}, Ltg0$a;->a(Ljava/lang/String;J)V

    .line 4
    iget-object v0, p0, Ll30;->g:Lj40;

    .line 5
    iget-object v1, v0, Lj40;->e:Ltg0$a;

    .line 6
    invoke-virtual {v0}, Lj40;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ltg0$a;->b(Ljava/lang/String;)V

    return-void
.end method
