.class public final synthetic Lc56;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# static fields
.field public static final e:Lc56;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc56;

    invoke-direct {v0}, Lc56;-><init>()V

    sput-object v0, Lc56;->e:Lc56;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    invoke-static {}, Lhb7;->c()Lhb7;

    move-result-object p1

    return-object p1
.end method
