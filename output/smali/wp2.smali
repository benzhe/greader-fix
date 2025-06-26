.class public final Lwp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpp2;


# instance fields
.field public final a:Lmp2;

.field public final b:Laq2;

.field public final c:Lyp2;


# direct methods
.method public constructor <init>(Lmp2;Laq2;Lyp2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwp2;->a:Lmp2;

    .line 3
    iput-object p2, p0, Lwp2;->b:Laq2;

    .line 4
    iput-object p3, p0, Lwp2;->c:Lyp2;

    return-void
.end method


# virtual methods
.method public final a(Lqp2;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lwp2;->b:Laq2;

    .line 2
    invoke-virtual {p1}, Lqp2;->e()Ljava/util/Map;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lwp2;->c:Lyp2;

    invoke-virtual {v1, p1}, Lyp2;->a(Ljava/util/Map;)V

    .line 4
    invoke-virtual {v0, p1}, Laq2;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lqp2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwp2;->a:Lmp2;

    invoke-virtual {p0, p1}, Lwp2;->a(Lqp2;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lmp2;->a(Ljava/lang/String;)V

    return-void
.end method
