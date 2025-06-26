.class public Landroidx/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbd;


# instance fields
.field public final e:Lzc;


# direct methods
.method public constructor <init>(Lzc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->e:Lzc;

    return-void
.end method


# virtual methods
.method public c(Ldd;Lad$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->e:Lzc;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lzc;->a(Ldd;Lad$a;ZLhd;)V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->e:Lzc;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Lzc;->a(Ldd;Lad$a;ZLhd;)V

    return-void
.end method
