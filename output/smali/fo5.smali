.class public final synthetic Lfo5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lao5;


# static fields
.field public static final a:Lfo5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfo5;

    invoke-direct {v0}, Lfo5;-><init>()V

    sput-object v0, Lfo5;->a:Lfo5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lbo5;

    .line 1
    sget-object v0, Lio5;->e:Lio5$a;

    .line 2
    invoke-interface {p2, p1}, Lbo5;->e(Ljava/lang/String;)Lbo5;

    return-void
.end method
