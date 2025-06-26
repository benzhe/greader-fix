.class public final Lyd7;
.super Lhb7;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhb7;-><init>()V

    .line 2
    iput-object p1, p0, Lyd7;->a:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public i(Ljb7;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lyd7;->a:Ljava/lang/Throwable;

    .line 2
    sget-object v1, Lzc7;->e:Lzc7;

    invoke-interface {p1, v1}, Ljb7;->c(Lic7;)V

    .line 3
    invoke-interface {p1, v0}, Ljb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method
