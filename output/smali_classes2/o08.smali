.class public final Lo08;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lk08;

.field public static final b:Lo08;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo08;

    invoke-direct {v0}, Lo08;-><init>()V

    sput-object v0, Lo08;->b:Lo08;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll08;)V
    .locals 1

    const-string v0, "koinApplication"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lo08;->a:Lk08;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Ll08;->a:Lk08;

    .line 3
    sput-object p1, Lo08;->a:Lk08;

    return-void

    .line 4
    :cond_0
    new-instance p1, Lx08;

    const-string v0, "A Koin Application has already been started"

    invoke-direct {p1, v0}, Lx08;-><init>(Ljava/lang/String;)V

    throw p1
.end method
