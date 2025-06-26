.class public Lqr7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:La48;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lorg/jsoup/nodes/Document;

.field public final c:Lyr7;

.field public final d:Lhs7;

.field public final e:Les7;

.field public final f:Lzr7;

.field public final g:Lfs7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lqr7;

    invoke-static {v0}, Lb48;->e(Ljava/lang/Class;)La48;

    move-result-object v0

    sput-object v0, Lqr7;->h:La48;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jsoup/nodes/Document;Lyr7;Ljs7;Lhs7;Les7;Lzr7;Lfs7;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "document"

    invoke-static {p2, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regExUtil"

    invoke-static {p4, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "preprocessor"

    invoke-static {p5, p4}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "metadataParser"

    invoke-static {p6, p4}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "articleGrabber"

    invoke-static {p7, p4}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "postprocessor"

    invoke-static {p8, p4}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqr7;->a:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lqr7;->b:Lorg/jsoup/nodes/Document;

    .line 3
    iput-object p3, p0, Lqr7;->c:Lyr7;

    .line 4
    iput-object p5, p0, Lqr7;->d:Lhs7;

    .line 5
    iput-object p6, p0, Lqr7;->e:Les7;

    .line 6
    iput-object p7, p0, Lqr7;->f:Lzr7;

    .line 7
    iput-object p8, p0, Lqr7;->g:Lfs7;

    return-void
.end method
