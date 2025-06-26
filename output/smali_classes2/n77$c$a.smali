.class public Ln77$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La67$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln77$c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln77$c;


# direct methods
.method public constructor <init>(Ln77$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln77$c$a;->a:Ln77$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln77$c$a;->a:Ln77$c;

    .line 2
    iget-object p1, p1, Ln77$c;->a:Ld67;

    .line 3
    sget-object v0, Lx47;->n:Lx47;

    const-string v1, "Keepalive failed. The connection is likely gone"

    invoke-virtual {v0, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v0

    invoke-interface {p1, v0}, Lc87;->c(Lx47;)V

    return-void
.end method

.method public b(J)V
    .locals 0

    return-void
.end method
