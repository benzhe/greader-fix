.class public final Lss1;
.super Lvs1;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final f:Lyp2;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lls0;Lyp2;Laq2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lvs1;-><init>(Ljava/util/concurrent/Executor;Lls0;Laq2;)V

    .line 2
    iput-object p3, p0, Lss1;->f:Lyp2;

    .line 3
    iget-object p1, p0, Lvs1;->a:Ljava/util/Map;

    invoke-virtual {p3, p1}, Lyp2;->a(Ljava/util/Map;)V

    return-void
.end method
