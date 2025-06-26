.class public final Lfq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpp2;


# instance fields
.field public final a:Laq2;

.field public final b:Lyp2;


# direct methods
.method public constructor <init>(Laq2;Lyp2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfq2;->a:Laq2;

    .line 3
    iput-object p2, p0, Lfq2;->b:Lyp2;

    return-void
.end method


# virtual methods
.method public final a(Lqp2;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lfq2;->a:Laq2;

    .line 2
    invoke-virtual {p1}, Lqp2;->e()Ljava/util/Map;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lfq2;->b:Lyp2;

    invoke-virtual {v1, p1}, Lyp2;->a(Ljava/util/Map;)V

    .line 4
    invoke-virtual {v0, p1}, Laq2;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lqp2;)V
    .locals 0

    return-void
.end method
