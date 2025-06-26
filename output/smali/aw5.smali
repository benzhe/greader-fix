.class public Law5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Li47$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Li47$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile h:Ljava/lang/String;


# instance fields
.field public final a:Lex5;

.field public final b:Lop5;

.field public final c:Liw5;

.field public final d:Ljava/lang/String;

.field public final e:Ljw5;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Li47;->c:Li47$d;

    const-string v1, "x-goog-api-client"

    .line 2
    invoke-static {v1, v0}, Li47$f;->a(Ljava/lang/String;Li47$d;)Li47$f;

    move-result-object v1

    sput-object v1, Law5;->f:Li47$f;

    const-string v1, "google-cloud-resource-prefix"

    .line 3
    invoke-static {v1, v0}, Li47$f;->a(Ljava/lang/String;Li47$d;)Li47$f;

    move-result-object v0

    sput-object v0, Law5;->g:Li47$f;

    const-string v0, "gl-java/"

    .line 4
    sput-object v0, Law5;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lex5;Landroid/content/Context;Lop5;Laq5;Ljw5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Law5;->a:Lex5;

    .line 3
    iput-object p5, p0, Law5;->e:Ljw5;

    .line 4
    iput-object p3, p0, Law5;->b:Lop5;

    .line 5
    new-instance p5, Lvv5;

    invoke-direct {p5, p3}, Lvv5;-><init>(Lop5;)V

    .line 6
    new-instance p3, Liw5;

    invoke-direct {p3, p1, p2, p4, p5}, Liw5;-><init>(Lex5;Landroid/content/Context;Laq5;Lw27;)V

    iput-object p3, p0, Law5;->c:Liw5;

    .line 7
    iget-object p1, p4, Laq5;->a:Lwt5;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 8
    iget-object p3, p1, Lwt5;->e:Ljava/lang/String;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    .line 9
    iget-object p1, p1, Lwt5;->f:Ljava/lang/String;

    const/4 p3, 0x1

    aput-object p1, p2, p3

    const-string p1, "projects/%s/databases/%s"

    .line 10
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Law5;->d:Ljava/lang/String;

    return-void
.end method
