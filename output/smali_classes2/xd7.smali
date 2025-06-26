.class public final Lxd7;
.super Lhb7;
.source "SourceFile"


# static fields
.field public static final a:Lhb7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lxd7;

    invoke-direct {v0}, Lxd7;-><init>()V

    sput-object v0, Lxd7;->a:Lhb7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhb7;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Ljb7;)V
    .locals 1

    .line 1
    sget-object v0, Lzc7;->e:Lzc7;

    invoke-interface {p1, v0}, Ljb7;->c(Lic7;)V

    .line 2
    invoke-interface {p1}, Ljb7;->a()V

    return-void
.end method
