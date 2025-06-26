.class public final synthetic Lh36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltc7;


# static fields
.field public static final e:Lh36;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh36;

    invoke-direct {v0}, Lh36;-><init>()V

    sput-object v0, Lh36;->e:Lh36;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    const-string p1, "FIAM.Headless"

    const-string v0, "Rate limiter client write failure"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
