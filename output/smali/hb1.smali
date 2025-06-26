.class public final synthetic Lhb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd1;


# instance fields
.field public final a:Lgn0;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgn0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhb1;->a:Lgn0;

    iput-object p2, p0, Lhb1;->b:Ljava/lang/String;

    iput-object p3, p0, Lhb1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lhb1;->a:Lgn0;

    iget-object v1, p0, Lhb1;->b:Ljava/lang/String;

    iget-object v2, p0, Lhb1;->c:Ljava/lang/String;

    check-cast p1, Lca1;

    .line 2
    invoke-interface {p1, v0, v1, v2}, Lca1;->O(Lgn0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
