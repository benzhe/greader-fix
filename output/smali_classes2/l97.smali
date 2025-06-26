.class public Ll97;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lna7;

.field public static final b:Lna7;

.field public static final c:Lna7;

.field public static final d:Lna7;

.field public static final e:Lna7;

.field public static final f:Lna7;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lna7;

    sget-object v1, Lna7;->g:Lbt7;

    const-string v2, "https"

    invoke-direct {v0, v1, v2}, Lna7;-><init>(Lbt7;Ljava/lang/String;)V

    sput-object v0, Ll97;->a:Lna7;

    .line 2
    new-instance v0, Lna7;

    const-string v2, "http"

    invoke-direct {v0, v1, v2}, Lna7;-><init>(Lbt7;Ljava/lang/String;)V

    sput-object v0, Ll97;->b:Lna7;

    .line 3
    new-instance v0, Lna7;

    sget-object v1, Lna7;->e:Lbt7;

    const-string v2, "POST"

    invoke-direct {v0, v1, v2}, Lna7;-><init>(Lbt7;Ljava/lang/String;)V

    sput-object v0, Ll97;->c:Lna7;

    .line 4
    new-instance v0, Lna7;

    const-string v2, "GET"

    invoke-direct {v0, v1, v2}, Lna7;-><init>(Lbt7;Ljava/lang/String;)V

    sput-object v0, Ll97;->d:Lna7;

    .line 5
    new-instance v0, Lna7;

    sget-object v1, Lu67;->g:Li47$f;

    .line 6
    iget-object v1, v1, Li47$f;->b:Ljava/lang/String;

    const-string v2, "application/grpc"

    .line 7
    invoke-direct {v0, v1, v2}, Lna7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ll97;->e:Lna7;

    .line 8
    new-instance v0, Lna7;

    const-string v1, "te"

    const-string v2, "trailers"

    invoke-direct {v0, v1, v2}, Lna7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ll97;->f:Lna7;

    return-void
.end method
