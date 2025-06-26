.class public final Lg97;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg97$b;
    }
.end annotation


# static fields
.field public static final h:Lg97$b;


# instance fields
.field public final a:Ld97;

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public final g:Lp77;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg97$b;

    sget-object v1, Ld97;->a:Ld97;

    invoke-direct {v0, v1}, Lg97$b;-><init>(Ld97;)V

    sput-object v0, Lg97;->h:Lg97$b;

    return-void
.end method

.method public constructor <init>(Ld97;Lg97$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ln56;->G()Lp77;

    move-result-object p2

    iput-object p2, p0, Lg97;->g:Lp77;

    .line 3
    iput-object p1, p0, Lg97;->a:Ld97;

    return-void
.end method
