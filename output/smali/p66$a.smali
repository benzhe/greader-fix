.class public Lp66$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbf5$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp66;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lp66$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lp66$a;

    invoke-direct {v0}, Lp66$a;-><init>()V

    sput-object v0, Lp66$a;->a:Lp66$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
